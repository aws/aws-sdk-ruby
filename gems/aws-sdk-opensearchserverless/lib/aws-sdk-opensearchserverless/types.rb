# frozen_string_literal: true

# This is generated code!

module Aws::OpenSearchServerless
  # This module contains the types returned by client operations.
  module Types

    # <p>Details about an OpenSearch Serverless access policy.</p>
    # @!attribute type
    #   <p>The type of access policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document without any whitespaces.</p>
    #   @return [JSON]
    # @!attribute created_date
    #   <p>The date the policy was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The timestamp of when the policy was last modified.</p>
    #   @return [Integer]
    class AccessPolicyDetail < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :policy,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics for an OpenSearch Serverless access policy.</p>
    # @!attribute data_policy_count
    #   <p>The number of data access policies in the current account.</p>
    #   @return [Integer]
    class AccessPolicyStats < Struct.new(
      :data_policy_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the data access policy.</p>
    # @!attribute type
    #   <p>The type of access policy. Currently, the only available type is
    #               <code>data</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the access policy.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The Epoch time when the access policy was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The date and time when the collection was last modified.</p>
    #   @return [Integer]
    class AccessPolicySummary < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>OpenSearch Serverless-related information for the current account.</p>
    # @!attribute capacity_limits
    #   <p>The maximum capacity limits for all OpenSearch Serverless collections, in OpenSearch Compute Units
    #               (OCUs). These limits are used to scale your collections based on the current workload.
    #               For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html">Managing
    #                   capacity limits for Amazon OpenSearch Serverless</a>.</p>
    #   @return [Types::CapacityLimits]
    class AccountSettingsDetail < Struct.new(
      :capacity_limits,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A list of collection IDs. You can't provide names and IDs in the same request. The ID
    #               is part of the collection endpoint. You can also retrieve it using the <a href="https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html">ListCollections</a> API.</p>
    #   @return [Array<String>]
    # @!attribute names
    #   <p>A list of collection names. You can't provide names and IDs in the same
    #               request.</p>
    #   @return [Array<String>]
    class BatchGetCollectionInput < Struct.new(
      :ids,
      :names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_details
    #   <p>Details about each collection.</p>
    #   @return [Array<Types::CollectionDetail>]
    # @!attribute collection_error_details
    #   <p>Error information for the request.</p>
    #   @return [Array<Types::CollectionErrorDetail>]
    class BatchGetCollectionOutput < Struct.new(
      :collection_details,
      :collection_error_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifiers
    #   <p>The unique identifiers of policy types and resource names.</p>
    #   @return [Array<Types::LifecyclePolicyResourceIdentifier>]
    class BatchGetEffectiveLifecyclePolicyRequest < Struct.new(
      :resource_identifiers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute effective_lifecycle_policy_details
    #   <p>A list of lifecycle policies applied to the OpenSearch Serverless indexes.</p>
    #   @return [Array<Types::EffectiveLifecyclePolicyDetail>]
    # @!attribute effective_lifecycle_policy_error_details
    #   <p>A list of resources for which retrieval failed.</p>
    #   @return [Array<Types::EffectiveLifecyclePolicyErrorDetail>]
    class BatchGetEffectiveLifecyclePolicyResponse < Struct.new(
      :effective_lifecycle_policy_details,
      :effective_lifecycle_policy_error_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifiers
    #   <p>The unique identifiers of policy types and policy names.</p>
    #   @return [Array<Types::LifecyclePolicyIdentifier>]
    class BatchGetLifecyclePolicyRequest < Struct.new(
      :identifiers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_details
    #   <p>A list of lifecycle policies matched to the input policy name and policy type.</p>
    #   @return [Array<Types::LifecyclePolicyDetail>]
    # @!attribute lifecycle_policy_error_details
    #   <p>A list of lifecycle policy names and policy types for which retrieval failed.</p>
    #   @return [Array<Types::LifecyclePolicyErrorDetail>]
    class BatchGetLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy_details,
      :lifecycle_policy_error_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A list of VPC endpoint identifiers.</p>
    #   @return [Array<String>]
    class BatchGetVpcEndpointInput < Struct.new(
      :ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_details
    #   <p>Details about the specified VPC endpoint.</p>
    #   @return [Array<Types::VpcEndpointDetail>]
    # @!attribute vpc_endpoint_error_details
    #   <p>Error information for a failed request.</p>
    #   @return [Array<Types::VpcEndpointErrorDetail>]
    class BatchGetVpcEndpointOutput < Struct.new(
      :vpc_endpoint_details,
      :vpc_endpoint_error_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum capacity limits for all OpenSearch Serverless collections, in OpenSearch Compute Units
    #             (OCUs). These limits are used to scale your collections based on the current workload.
    #             For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html">Managing
    #                 capacity limits for Amazon OpenSearch Serverless</a>.</p>
    # @!attribute max_indexing_capacity_in_ocu
    #   <p>The maximum indexing capacity for collections.</p>
    #   @return [Integer]
    # @!attribute max_search_capacity_in_ocu
    #   <p>The maximum search capacity for collections.</p>
    #   @return [Integer]
    class CapacityLimits < Struct.new(
      :max_indexing_capacity_in_ocu,
      :max_search_capacity_in_ocu,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about each OpenSearch Serverless collection, including the collection endpoint and the
    #             OpenSearch Dashboards endpoint.</p>
    # @!attribute id
    #   <p>A unique identifier for the collection.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the collection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the collection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of collection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the collection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the collection.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the Amazon Web Services KMS key used to encrypt the collection.</p>
    #   @return [String]
    # @!attribute standby_replicas
    #   <p>Details about an OpenSearch Serverless collection.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The Epoch time when the collection was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The date and time when the collection was last modified.</p>
    #   @return [Integer]
    # @!attribute collection_endpoint
    #   <p>Collection-specific endpoint used to submit index, search, and data upload requests to
    #               an OpenSearch Serverless collection.</p>
    #   @return [String]
    # @!attribute dashboard_endpoint
    #   <p>Collection-specific endpoint used to access OpenSearch Dashboards.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>A failure code associated with the request.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>A message associated with the failure code.</p>
    #   @return [String]
    class CollectionDetail < Struct.new(
      :id,
      :name,
      :status,
      :type,
      :description,
      :arn,
      :kms_key_arn,
      :standby_replicas,
      :created_date,
      :last_modified_date,
      :collection_endpoint,
      :dashboard_endpoint,
      :failure_code,
      :failure_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error information for an OpenSearch Serverless request.</p>
    # @!attribute id
    #   <p>If the request contains collection IDs, the response includes the IDs provided in the
    #               request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>If the request contains collection names, the response includes the names provided in
    #               the request.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A description of the error. For example, <code>The specified Collection is not
    #                   found.</code>
    #            </p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for the request. For example, <code>NOT_FOUND</code>.</p>
    #   @return [String]
    class CollectionErrorDetail < Struct.new(
      :id,
      :name,
      :error_message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of filter keys that you can use for LIST, UPDATE, and DELETE requests to OpenSearch Serverless
    #             collections.</p>
    # @!attribute name
    #   <p>The name of the collection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the collection.</p>
    #   @return [String]
    class CollectionFilters < Struct.new(
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about each OpenSearch Serverless collection.</p>
    # @!attribute id
    #   <p>The unique identifier of the collection.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the collection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the collection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the collection.</p>
    #   @return [String]
    class CollectionSummary < Struct.new(
      :id,
      :name,
      :status,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When creating a resource, thrown when a resource with the same name already exists or
    #             is being created. When deleting a resource, thrown when the resource is not in the
    #             ACTIVE or FAILED state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the policy. Typically used to store information about the permissions
    #               defined in the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document to use as the content for the policy.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateAccessPolicyInput < Struct.new(
      :type,
      :name,
      :description,
      :policy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_detail
    #   <p>Details about the created access policy.</p>
    #   @return [Types::AccessPolicyDetail]
    class CreateAccessPolicyOutput < Struct.new(
      :access_policy_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the created OpenSearch Serverless collection.</p>
    # @!attribute id
    #   <p>The unique identifier of the collection.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the collection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the collection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of collection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the collection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the collection.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key with which to encrypt the
    #               collection.</p>
    #   @return [String]
    # @!attribute standby_replicas
    #   <p>Creates details about an OpenSearch Serverless collection.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The Epoch time when the collection was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The date and time when the collection was last modified.</p>
    #   @return [Integer]
    class CreateCollectionDetail < Struct.new(
      :id,
      :name,
      :status,
      :type,
      :description,
      :arn,
      :kms_key_arn,
      :standby_replicas,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the collection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of collection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the collection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An arbitrary set of tags (key–value pairs) to associate with the OpenSearch Serverless
    #               collection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute standby_replicas
    #   <p>Indicates whether standby replicas should be used for a collection.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateCollectionInput < Struct.new(
      :name,
      :type,
      :description,
      :tags,
      :standby_replicas,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_collection_detail
    #   <p>Details about the collection.</p>
    #   @return [Types::CreateCollectionDetail]
    class CreateCollectionOutput < Struct.new(
      :create_collection_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes IAM Identity Center options for creating an OpenSearch Serverless security
    #             configuration in the form of a key-value map.</p>
    # @!attribute instance_arn
    #   <p>The ARN of the IAM Identity Center instance used to integrate with OpenSearch
    #               Serverless.</p>
    #   @return [String]
    # @!attribute user_attribute
    #   <p>The user attribute for this IAM Identity Center integration. Defaults to
    #                   <code>UserId</code>.</p>
    #   @return [String]
    # @!attribute group_attribute
    #   <p>The group attribute for this IAM Identity Center integration. Defaults to
    #                   <code>GroupId</code>.</p>
    #   @return [String]
    class CreateIamIdentityCenterConfigOptions < Struct.new(
      :instance_arn,
      :user_attribute,
      :group_attribute,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the collection in which to create the index.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to create. Index names must be lowercase and can't begin with
    #               underscores (_) or hyphens (-).</p>
    #   @return [String]
    # @!attribute index_schema
    #   <p>The JSON schema definition for the index, including field mappings and
    #               settings.</p>
    #   @return [JSON]
    class CreateIndexRequest < Struct.new(
      :id,
      :index_name,
      :index_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateIndexResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document to use as the content for the lifecycle policy.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateLifecyclePolicyRequest < Struct.new(
      :type,
      :name,
      :description,
      :policy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_detail
    #   <p>Details about the created lifecycle policy.</p>
    #   @return [Types::LifecyclePolicyDetail]
    class CreateLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of security configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security configuration.</p>
    #   @return [String]
    # @!attribute saml_options
    #   <p>Describes SAML options in in the form of a key-value map. This field is required if
    #               you specify <code>SAML</code> for the <code>type</code> parameter.</p>
    #   @return [Types::SamlConfigOptions]
    # @!attribute iam_identity_center_options
    #   <p>Describes IAM Identity Center options in the form of a key-value map. This field is
    #               required if you specify iamidentitycenter for the type parameter.</p>
    #   @return [Types::CreateIamIdentityCenterConfigOptions]
    # @!attribute iam_federation_options
    #   <p>Describes IAM federation options in the form of a key-value map. This field is
    #               required if you specify <code>iamFederation</code> for the <code>type</code>
    #               parameter.</p>
    #   @return [Types::IamFederationConfigOptions]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateSecurityConfigInput < Struct.new(
      :type,
      :name,
      :description,
      :saml_options,
      :iam_identity_center_options,
      :iam_federation_options,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_config_detail
    #   <p>Details about the created security configuration.</p>
    #   @return [Types::SecurityConfigDetail]
    class CreateSecurityConfigOutput < Struct.new(
      :security_config_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of security policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the policy. Typically used to store information about the permissions
    #               defined in the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document to use as the content for the new policy.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateSecurityPolicyInput < Struct.new(
      :type,
      :name,
      :description,
      :policy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_policy_detail
    #   <p>Details about the created security policy.</p>
    #   @return [Types::SecurityPolicyDetail]
    class CreateSecurityPolicyOutput < Struct.new(
      :security_policy_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Creation details for an OpenSearch Serverless-managed interface endpoint. For more information, see
    #                 <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html">Access
    #                 Amazon OpenSearch Serverless using an interface endpoint</a>.</p>
    # @!attribute id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status in the endpoint creation process.</p>
    #   @return [String]
    class CreateVpcEndpointDetail < Struct.new(
      :id,
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the interface endpoint.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC from which you'll access OpenSearch Serverless.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The ID of one or more subnets from which you'll access OpenSearch Serverless.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups that define the ports, protocols, and
    #               sources for inbound traffic that you are authorizing into your endpoint.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class CreateVpcEndpointInput < Struct.new(
      :name,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_vpc_endpoint_detail
    #   <p>Details about the created interface VPC endpoint.</p>
    #   @return [Types::CreateVpcEndpointDetail]
    class CreateVpcEndpointOutput < Struct.new(
      :create_vpc_endpoint_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteAccessPolicyInput < Struct.new(
      :type,
      :name,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessPolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a deleted OpenSearch Serverless collection.</p>
    # @!attribute id
    #   <p>The unique identifier of the collection.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the collection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the collection.</p>
    #   @return [String]
    class DeleteCollectionDetail < Struct.new(
      :id,
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the collection. For example, <code>1iu5usc406kd</code>. The
    #               ID is part of the collection endpoint. You can also retrieve it using the <a href="https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html">ListCollections</a> API.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteCollectionInput < Struct.new(
      :id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delete_collection_detail
    #   <p>Details of the deleted collection.</p>
    #   @return [Types::DeleteCollectionDetail]
    class DeleteCollectionOutput < Struct.new(
      :delete_collection_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the collection containing the index to delete.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to delete.</p>
    #   @return [String]
    class DeleteIndexRequest < Struct.new(
      :id,
      :index_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIndexResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteLifecyclePolicyRequest < Struct.new(
      :type,
      :name,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteLifecyclePolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The security configuration identifier. For SAML the ID will be
    #                   <code>saml/&lt;accountId&gt;/&lt;idpProviderName&gt;</code>. For example,
    #                   <code>saml/123456789123/OKTADev</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteSecurityConfigInput < Struct.new(
      :id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSecurityConfigOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteSecurityPolicyInput < Struct.new(
      :type,
      :name,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSecurityPolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Deletion details for an OpenSearch Serverless-managed interface endpoint.</p>
    # @!attribute id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the endpoint deletion process.</p>
    #   @return [String]
    class DeleteVpcEndpointDetail < Struct.new(
      :id,
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The VPC endpoint identifier.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteVpcEndpointInput < Struct.new(
      :id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delete_vpc_endpoint_detail
    #   <p>Details about the deleted endpoint.</p>
    #   @return [Types::DeleteVpcEndpointDetail]
    class DeleteVpcEndpointOutput < Struct.new(
      :delete_vpc_endpoint_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error information for an OpenSearch Serverless request.</p>
    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The name of the OpenSearch Serverless index resource.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of OpenSearch Serverless resource. Currently, the only supported resource is
    #                   <code>index</code>.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>The minimum number of index retention in days or hours. This is an optional parameter
    #               that will return only if it’s set.</p>
    #   @return [String]
    # @!attribute no_min_retention_period
    #   <p>The minimum number of index retention days set. That is an optional param that will
    #               return as <code>true</code> if the minimum number of days or hours is not set to a index
    #               resource.</p>
    #   @return [Boolean]
    class EffectiveLifecyclePolicyDetail < Struct.new(
      :type,
      :resource,
      :policy_name,
      :resource_type,
      :retention_period,
      :no_min_retention_period,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error information for an OpenSearch Serverless request.</p>
    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The name of OpenSearch Serverless index resource.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A description of the error. For example, <code>The specified Index resource is not
    #                   found</code>.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for the request.</p>
    #   @return [String]
    class EffectiveLifecyclePolicyErrorDetail < Struct.new(
      :type,
      :resource,
      :error_message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>Tye type of policy. Currently, the only supported value is <code>data</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access policy.</p>
    #   @return [String]
    class GetAccessPolicyInput < Struct.new(
      :type,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_detail
    #   <p>Details about the requested access policy.</p>
    #   @return [Types::AccessPolicyDetail]
    class GetAccessPolicyOutput < Struct.new(
      :access_policy_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetAccountSettingsInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_settings_detail
    #   <p>OpenSearch Serverless-related details for the current account.</p>
    #   @return [Types::AccountSettingsDetail]
    class GetAccountSettingsOutput < Struct.new(
      :account_settings_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the collection containing the index.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to retrieve information about.</p>
    #   @return [String]
    class GetIndexRequest < Struct.new(
      :id,
      :index_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_schema
    #   <p>The JSON schema definition for the index, including field mappings and
    #               settings.</p>
    #   @return [JSON]
    class GetIndexResponse < Struct.new(
      :index_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetPoliciesStatsInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_stats
    #   <p>Information about the data access policies in your account.</p>
    #   @return [Types::AccessPolicyStats]
    # @!attribute security_policy_stats
    #   <p>Information about the security policies in your account.</p>
    #   @return [Types::SecurityPolicyStats]
    # @!attribute security_config_stats
    #   <p>Information about the security configurations in your account.</p>
    #   @return [Types::SecurityConfigStats]
    # @!attribute lifecycle_policy_stats
    #   <p>Information about the lifecycle policies in your account.</p>
    #   @return [Types::LifecyclePolicyStats]
    # @!attribute total_policy_count
    #   <p>The total number of OpenSearch Serverless security policies and configurations in your
    #               account.</p>
    #   @return [Integer]
    class GetPoliciesStatsOutput < Struct.new(
      :access_policy_stats,
      :security_policy_stats,
      :security_config_stats,
      :lifecycle_policy_stats,
      :total_policy_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the security configuration.</p>
    #   @return [String]
    class GetSecurityConfigInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_config_detail
    #   <p>Details of the requested security configuration.</p>
    #   @return [Types::SecurityConfigDetail]
    class GetSecurityConfigOutput < Struct.new(
      :security_config_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of security policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security policy.</p>
    #   @return [String]
    class GetSecurityPolicyInput < Struct.new(
      :type,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_policy_detail
    #   <p>Details about the requested security policy.</p>
    #   @return [Types::SecurityPolicyDetail]
    class GetSecurityPolicyOutput < Struct.new(
      :security_policy_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes IAM federation options for an OpenSearch Serverless security configuration
    #             in the form of a key-value map. These options define how OpenSearch Serverless
    #             integrates with external identity providers using federation.</p>
    # @!attribute group_attribute
    #   <p>The group attribute for this IAM federation integration. This attribute is used to map
    #               identity provider groups to OpenSearch Serverless permissions.</p>
    #   @return [String]
    # @!attribute user_attribute
    #   <p>The user attribute for this IAM federation integration. This attribute is used to
    #               identify users in the federated authentication process.</p>
    #   @return [String]
    class IamFederationConfigOptions < Struct.new(
      :group_attribute,
      :user_attribute,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes IAM Identity Center options for an OpenSearch Serverless security
    #             configuration in the form of a key-value map.</p>
    # @!attribute instance_arn
    #   <p>The ARN of the IAM Identity Center instance used to integrate with OpenSearch
    #               Serverless.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The ARN of the IAM Identity Center application used to integrate with OpenSearch
    #               Serverless.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the IAM Identity Center application used to integrate with OpenSearch
    #               Serverless.</p>
    #   @return [String]
    # @!attribute application_description
    #   <p>The description of the IAM Identity Center application used to integrate with
    #               OpenSearch Serverless.</p>
    #   @return [String]
    # @!attribute user_attribute
    #   <p>The user attribute for this IAM Identity Center integration. Defaults to
    #                   <code>UserId</code>
    #            </p>
    #   @return [String]
    # @!attribute group_attribute
    #   <p>The group attribute for this IAM Identity Center integration. Defaults to
    #                   <code>GroupId</code>.</p>
    #   @return [String]
    class IamIdentityCenterConfigOptions < Struct.new(
      :instance_arn,
      :application_arn,
      :application_name,
      :application_description,
      :user_attribute,
      :group_attribute,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when an error internal to the service occurs while processing a request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an OpenSearch Serverless lifecycle policy.</p>
    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document without any whitespaces.</p>
    #   @return [JSON]
    # @!attribute created_date
    #   <p>The date the lifecycle policy was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The timestamp of when the lifecycle policy was last modified.</p>
    #   @return [Integer]
    class LifecyclePolicyDetail < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :policy,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error information for an OpenSearch Serverless request.</p>
    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A description of the error. For example, <code>The specified Lifecycle Policy is not
    #                   found</code>.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for the request. For example, <code>NOT_FOUND</code>.</p>
    #   @return [String]
    class LifecyclePolicyErrorDetail < Struct.new(
      :type,
      :name,
      :error_message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The unique identifiers of policy types and policy names.</p>
    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the lifecycle policy.</p>
    #   @return [String]
    class LifecyclePolicyIdentifier < Struct.new(
      :type,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The unique identifiers of policy types and resource names.</p>
    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The name of the OpenSearch Serverless ilndex resource.</p>
    #   @return [String]
    class LifecyclePolicyResourceIdentifier < Struct.new(
      :type,
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics for an OpenSearch Serverless lifecycle policy.</p>
    # @!attribute retention_policy_count
    #   <p>The number of retention lifecycle policies in the current account.</p>
    #   @return [Integer]
    class LifecyclePolicyStats < Struct.new(
      :retention_policy_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the lifecycle policy.</p>
    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The Epoch time when the lifecycle policy was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The date and time when the lifecycle policy was last modified.</p>
    #   @return [Integer]
    class LifecyclePolicySummary < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of access policy.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>Resource filters (can be collections or indexes) that policies can apply to.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If your initial <code>ListAccessPolicies</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListAccessPolicies</code> operations, which returns results in the next
    #               page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results. The default is 20.</p>
    #   @return [Integer]
    class ListAccessPoliciesInput < Struct.new(
      :type,
      :resource,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_summaries
    #   <p>Details about the requested access policies.</p>
    #   @return [Array<Types::AccessPolicySummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListAccessPoliciesOutput < Struct.new(
      :access_policy_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_filters
    #   <p> A list of filter names and values that you can use for requests.</p>
    #   @return [Types::CollectionFilters]
    # @!attribute next_token
    #   <p>If your initial <code>ListCollections</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListCollections</code> operations, which returns results in the next
    #               page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Default is 20. You can use
    #                   <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    class ListCollectionsInput < Struct.new(
      :collection_filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_summaries
    #   <p>Details about each collection.</p>
    #   @return [Array<Types::CollectionSummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListCollectionsOutput < Struct.new(
      :collection_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>Resource filters that policies can apply to. Currently, the only supported resource
    #               type is <code>index</code>.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If your initial <code>ListLifecyclePolicies</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListLifecyclePolicies</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use use <code>nextToken</code> to get the next page of results. The default is
    #               10.</p>
    #   @return [Integer]
    class ListLifecyclePoliciesRequest < Struct.new(
      :type,
      :resources,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_summaries
    #   <p>Details about the requested lifecycle policies.</p>
    #   @return [Array<Types::LifecyclePolicySummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListLifecyclePoliciesResponse < Struct.new(
      :lifecycle_policy_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of security configuration.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If your initial <code>ListSecurityConfigs</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListSecurityConfigs</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results. The default is 20.</p>
    #   @return [Integer]
    class ListSecurityConfigsInput < Struct.new(
      :type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_config_summaries
    #   <p>Details about the security configurations in your account.</p>
    #   @return [Array<Types::SecurityConfigSummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListSecurityConfigsOutput < Struct.new(
      :security_config_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>Resource filters (can be collection or indexes) that policies can apply to. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If your initial <code>ListSecurityPolicies</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListSecurityPolicies</code> operations, which returns results in the
    #               next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results. The default is 20.</p>
    #   @return [Integer]
    class ListSecurityPoliciesInput < Struct.new(
      :type,
      :resource,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_policy_summaries
    #   <p>Details about the security policies in your account.</p>
    #   @return [Array<Types::SecurityPolicySummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListSecurityPoliciesOutput < Struct.new(
      :security_policy_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. The resource must be active (not in
    #               the <code>DELETING</code> state), and must be owned by the account ID included in the
    #               request.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_filters
    #   <p>Filter the results according to the current status of the VPC endpoint. Possible
    #               statuses are <code>CREATING</code>, <code>DELETING</code>, <code>UPDATING</code>,
    #                   <code>ACTIVE</code>, and <code>FAILED</code>.</p>
    #   @return [Types::VpcEndpointFilters]
    # @!attribute next_token
    #   <p>If your initial <code>ListVpcEndpoints</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListVpcEndpoints</code> operations, which returns results in the next
    #               page. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results. The default is 20.</p>
    #   @return [Integer]
    class ListVpcEndpointsInput < Struct.new(
      :vpc_endpoint_filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_summaries
    #   <p>Details about each VPC endpoint, including the name and current status.</p>
    #   @return [Array<Types::VpcEndpointSummary>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value
    #               of <code>nextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListVpcEndpointsOutput < Struct.new(
      :vpc_endpoint_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the collection you're attempting to create results in a number of search
    #             or indexing OCUs that exceeds the account limit. </p>
    # @!attribute message
    #   Description of the error.
    #   @return [String]
    class OcuLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when accessing or deleting a resource that does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes SAML options for an OpenSearch Serverless security configuration in the form of a key-value
    #             map.</p>
    # @!attribute metadata
    #   <p>The XML IdP metadata file generated from your identity provider.</p>
    #   @return [String]
    # @!attribute user_attribute
    #   <p>A user attribute for this SAML integration.</p>
    #   @return [String]
    # @!attribute group_attribute
    #   <p>The group attribute for this SAML integration.</p>
    #   @return [String]
    # @!attribute open_search_serverless_entity_id
    #   <p>Custom entity ID attribute to override the default entity ID for this SAML
    #               integration.</p>
    #   @return [String]
    # @!attribute session_timeout
    #   <p>The session timeout, in minutes. Default is 60 minutes (12 hours).</p>
    #   @return [Integer]
    class SamlConfigOptions < Struct.new(
      :metadata,
      :user_attribute,
      :group_attribute,
      :open_search_serverless_entity_id,
      :session_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a security configuration for OpenSearch Serverless.</p>
    # @!attribute id
    #   <p>The unique identifier of the security configuration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of security configuration.</p>
    #   @return [String]
    # @!attribute config_version
    #   <p>The version of the security configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the security configuration.</p>
    #   @return [String]
    # @!attribute saml_options
    #   <p>SAML options for the security configuration in the form of a key-value map.</p>
    #   @return [Types::SamlConfigOptions]
    # @!attribute iam_identity_center_options
    #   <p>Describes IAM Identity Center options in the form of a key-value map.</p>
    #   @return [Types::IamIdentityCenterConfigOptions]
    # @!attribute iam_federation_options
    #   <p>Describes IAM federation options in the form of a key-value map. Contains
    #               configuration details about how OpenSearch Serverless integrates with external identity
    #               providers through federation.</p>
    #   @return [Types::IamFederationConfigOptions]
    # @!attribute created_date
    #   <p>The date the configuration was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The timestamp of when the configuration was last modified.</p>
    #   @return [Integer]
    class SecurityConfigDetail < Struct.new(
      :id,
      :type,
      :config_version,
      :description,
      :saml_options,
      :iam_identity_center_options,
      :iam_federation_options,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics for an OpenSearch Serverless security configuration.</p>
    # @!attribute saml_config_count
    #   <p>The number of security configurations in the current account.</p>
    #   @return [Integer]
    class SecurityConfigStats < Struct.new(
      :saml_config_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a security configuration for OpenSearch Serverless.</p>
    # @!attribute id
    #   <p>The unique identifier of the security configuration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of security configuration.</p>
    #   @return [String]
    # @!attribute config_version
    #   <p>The version of the security configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the security configuration.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The Epoch time when the security configuration was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The timestamp of when the configuration was last modified.</p>
    #   @return [Integer]
    class SecurityConfigSummary < Struct.new(
      :id,
      :type,
      :config_version,
      :description,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an OpenSearch Serverless security policy.</p>
    # @!attribute type
    #   <p>The type of security policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the security policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document without any whitespaces.</p>
    #   @return [JSON]
    # @!attribute created_date
    #   <p>The date the policy was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The timestamp of when the policy was last modified.</p>
    #   @return [Integer]
    class SecurityPolicyDetail < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :policy,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics for an OpenSearch Serverless security policy.</p>
    # @!attribute encryption_policy_count
    #   <p>The number of encryption policies in the current account.</p>
    #   @return [Integer]
    # @!attribute network_policy_count
    #   <p>The number of network policies in the current account.</p>
    #   @return [Integer]
    class SecurityPolicyStats < Struct.new(
      :encryption_policy_count,
      :network_policy_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a security policy for OpenSearch Serverless.</p>
    # @!attribute type
    #   <p>The type of security policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the security policy.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date the policy was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The timestamp of when the policy was last modified.</p>
    #   @return [Integer]
    class SecurityPolicySummary < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when you attempt to create more resources than the service allows based on
    #             service quotas.</p>
    # @!attribute message
    #   Description of the error.
    #   @return [String]
    # @!attribute resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    # @!attribute resource_type
    #   Type of the resource affected.
    #   @return [String]
    # @!attribute service_code
    #   Service Quotas requirement to identify originating service.
    #   @return [String]
    # @!attribute quota_code
    #   Service Quotas requirement to identify originating quota.
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A map of key-value pairs associated to an OpenSearch Serverless resource.</p>
    # @!attribute key
    #   <p>The key to use in the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. The resource must be active (not in
    #               the <code>DELETING</code> state), and must be owned by the account ID included in the
    #               request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags (key-value pairs) to add to the resource. All tag keys in the request
    #               must be unique.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from. The resource must
    #               be active (not in the <code>DELETING</code> state), and must be owned by the account ID
    #               included in the request.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag or set of tags to remove from the resource. All tag keys in the request must
    #               be unique.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the policy being updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the policy. Typically used to store information about the permissions
    #               defined in the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document to use as the content for the policy.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateAccessPolicyInput < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :policy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_detail
    #   <p>Details about the updated access policy.</p>
    #   @return [Types::AccessPolicyDetail]
    class UpdateAccessPolicyOutput < Struct.new(
      :access_policy_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_limits
    #   <p>The maximum capacity limits for all OpenSearch Serverless collections, in OpenSearch Compute Units
    #               (OCUs). These limits are used to scale your collections based on the current workload.
    #               For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html">Managing
    #                   capacity limits for Amazon OpenSearch Serverless</a>.</p>
    #   @return [Types::CapacityLimits]
    class UpdateAccountSettingsInput < Struct.new(
      :capacity_limits,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_settings_detail
    #   <p>OpenSearch Serverless-related settings for the current Amazon Web Services account.</p>
    #   @return [Types::AccountSettingsDetail]
    class UpdateAccountSettingsOutput < Struct.new(
      :account_settings_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an updated OpenSearch Serverless collection.</p>
    # @!attribute id
    #   <p>The unique identifier of the collection.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the collection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the collection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The collection type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the collection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the collection.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date and time when the collection was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_date
    #   <p>The date and time when the collection was last modified.</p>
    #   @return [Integer]
    class UpdateCollectionDetail < Struct.new(
      :id,
      :name,
      :status,
      :type,
      :description,
      :arn,
      :created_date,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the collection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the collection.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateCollectionInput < Struct.new(
      :id,
      :description,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_collection_detail
    #   <p>Details about the updated collection.</p>
    #   @return [Types::UpdateCollectionDetail]
    class UpdateCollectionOutput < Struct.new(
      :update_collection_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes IAM Identity Center options for updating an OpenSearch Serverless security
    #             configuration in the form of a key-value map.</p>
    # @!attribute user_attribute
    #   <p>The user attribute for this IAM Identity Center integration. Defaults to
    #                   <code>UserId</code>.</p>
    #   @return [String]
    # @!attribute group_attribute
    #   <p>The group attribute for this IAM Identity Center integration. Defaults to
    #                   <code>GroupId</code>.</p>
    #   @return [String]
    class UpdateIamIdentityCenterConfigOptions < Struct.new(
      :user_attribute,
      :group_attribute,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the collection containing the index to update.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to update.</p>
    #   @return [String]
    # @!attribute index_schema
    #   <p>The updated JSON schema definition for the index, including field mappings and
    #               settings. </p>
    #   @return [JSON]
    class UpdateIndexRequest < Struct.new(
      :id,
      :index_name,
      :index_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateIndexResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p> The type of lifecycle policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the policy being updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document to use as the content for the lifecycle policy.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateLifecyclePolicyRequest < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :policy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_detail
    #   <p>Details about the updated lifecycle policy.</p>
    #   @return [Types::LifecyclePolicyDetail]
    class UpdateLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The security configuration identifier. For SAML the ID will be
    #                   <code>saml/&lt;accountId&gt;/&lt;idpProviderName&gt;</code>. For example,
    #                   <code>saml/123456789123/OKTADev</code>.</p>
    #   @return [String]
    # @!attribute config_version
    #   <p>The version of the security configuration to be updated. You can find the most recent
    #               version of a security configuration using the <code>GetSecurityPolicy</code>
    #               command.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security configuration.</p>
    #   @return [String]
    # @!attribute saml_options
    #   <p>SAML options in in the form of a key-value map.</p>
    #   @return [Types::SamlConfigOptions]
    # @!attribute iam_identity_center_options_updates
    #   <p>Describes IAM Identity Center options in the form of a key-value map.</p>
    #   @return [Types::UpdateIamIdentityCenterConfigOptions]
    # @!attribute iam_federation_options
    #   <p>Describes IAM federation options in the form of a key-value map for updating an
    #               existing security configuration. Use this field to modify IAM federation settings for
    #               the security configuration.</p>
    #   @return [Types::IamFederationConfigOptions]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateSecurityConfigInput < Struct.new(
      :id,
      :config_version,
      :description,
      :saml_options,
      :iam_identity_center_options_updates,
      :iam_federation_options,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_config_detail
    #   <p>Details about the updated security configuration. </p>
    #   @return [Types::SecurityConfigDetail]
    class UpdateSecurityConfigOutput < Struct.new(
      :security_config_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of access policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version
    #   <p>The version of the policy being updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the policy. Typically used to store information about the permissions
    #               defined in the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy document to use as the content for the new policy.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateSecurityPolicyInput < Struct.new(
      :type,
      :name,
      :policy_version,
      :description,
      :policy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_policy_detail
    #   <p>Details about the updated security policy.</p>
    #   @return [Types::SecurityPolicyDetail]
    class UpdateSecurityPolicyOutput < Struct.new(
      :security_policy_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Update details for an OpenSearch Serverless-managed interface endpoint.</p>
    # @!attribute id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the endpoint update process.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The ID of the subnets from which you access OpenSearch Serverless.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups that define the ports, protocols, and
    #               sources for inbound traffic that you are authorizing into your endpoint.</p>
    #   @return [Array<String>]
    # @!attribute last_modified_date
    #   <p>The timestamp of when the endpoint was last modified.</p>
    #   @return [Integer]
    class UpdateVpcEndpointDetail < Struct.new(
      :id,
      :name,
      :status,
      :subnet_ids,
      :security_group_ids,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the interface endpoint to update.</p>
    #   @return [String]
    # @!attribute add_subnet_ids
    #   <p>The ID of one or more subnets to add to the endpoint.</p>
    #   @return [Array<String>]
    # @!attribute remove_subnet_ids
    #   <p>The unique identifiers of the subnets to remove from the endpoint.</p>
    #   @return [Array<String>]
    # @!attribute add_security_group_ids
    #   <p>The unique identifiers of the security groups to add to the endpoint. Security groups
    #               define the ports, protocols, and sources for inbound traffic that you are authorizing
    #               into your endpoint.</p>
    #   @return [Array<String>]
    # @!attribute remove_security_group_ids
    #   <p>The unique identifiers of the security groups to remove from the endpoint.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateVpcEndpointInput < Struct.new(
      :id,
      :add_subnet_ids,
      :remove_subnet_ids,
      :add_security_group_ids,
      :remove_security_group_ids,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_vpc_endpoint_detail
    #   <p>Details about the updated VPC endpoint.</p>
    #   @return [Types::UpdateVpcEndpointDetail]
    class UpdateVpcEndpointOutput < Struct.new(
      :update_vpc_endpoint_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the HTTP request contains invalid input or is missing required
    #             input.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an OpenSearch Serverless-managed interface endpoint.</p>
    # @!attribute id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC from which you access OpenSearch Serverless.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The ID of the subnets from which you access OpenSearch Serverless.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups that define the ports, protocols, and
    #               sources for inbound traffic that you are authorizing into your endpoint.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current status of the endpoint.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date the endpoint was created.</p>
    #   @return [Integer]
    # @!attribute failure_code
    #   <p>A failure code associated with the request.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>A message associated with the failure code.</p>
    #   @return [String]
    class VpcEndpointDetail < Struct.new(
      :id,
      :name,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :status,
      :created_date,
      :failure_code,
      :failure_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error information for a failed <code>BatchGetVpcEndpoint</code> request.</p>
    # @!attribute id
    #   <p>The unique identifier of the VPC endpoint.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message describing the reason for the failure.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for the failed request.</p>
    #   @return [String]
    class VpcEndpointErrorDetail < Struct.new(
      :id,
      :error_message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filter the results of a <code>ListVpcEndpoints</code> request.</p>
    # @!attribute status
    #   <p>The current status of the endpoint.</p>
    #   @return [String]
    class VpcEndpointFilters < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC endpoint object.</p>
    # @!attribute id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the endpoint.</p>
    #   @return [String]
    class VpcEndpointSummary < Struct.new(
      :id,
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end

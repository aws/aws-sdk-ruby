# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpenSearchServerless
  module Types

    # Details about an OpenSearch Serverless access policy.
    #
    # @!attribute [rw] created_date
    #   The date the policy was created.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The timestamp of when the policy was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON policy document without any whitespaces.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] policy_version
    #   The version of the policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of access policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/AccessPolicyDetail AWS API Documentation
    #
    class AccessPolicyDetail < Struct.new(
      :created_date,
      :description,
      :last_modified_date,
      :name,
      :policy,
      :policy_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics for an OpenSearch Serverless access policy.
    #
    # @!attribute [rw] data_policy_count
    #   The number of data access policies in the current account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/AccessPolicyStats AWS API Documentation
    #
    class AccessPolicyStats < Struct.new(
      :data_policy_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the data access policy.
    #
    # @!attribute [rw] created_date
    #   The Epoch time when the access policy was created.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the collection was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version
    #   The version of the policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of access policy. Currently the only available type is
    #   `data`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/AccessPolicySummary AWS API Documentation
    #
    class AccessPolicySummary < Struct.new(
      :created_date,
      :description,
      :last_modified_date,
      :name,
      :policy_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # OpenSearch Serverless-related information for the current account.
    #
    # @!attribute [rw] capacity_limits
    #   The maximum capacity limits for all OpenSearch Serverless
    #   collections, in OpenSearch Compute Units (OCUs). These limits are
    #   used to scale your collections based on the current workload. For
    #   more information, see [Managing capacity limits for Amazon
    #   OpenSearch Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html
    #   @return [Types::CapacityLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/AccountSettingsDetail AWS API Documentation
    #
    class AccountSettingsDetail < Struct.new(
      :capacity_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A list of collection IDs. You can't provide names and IDs in the
    #   same request. The ID is part of the collection endpoint. You can
    #   also retrieve it using the [ListCollections][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] names
    #   A list of collection names. You can't provide names and IDs in the
    #   same request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/BatchGetCollectionRequest AWS API Documentation
    #
    class BatchGetCollectionRequest < Struct.new(
      :ids,
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_details
    #   Details about each collection.
    #   @return [Array<Types::CollectionDetail>]
    #
    # @!attribute [rw] collection_error_details
    #   Error information for the request.
    #   @return [Array<Types::CollectionErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/BatchGetCollectionResponse AWS API Documentation
    #
    class BatchGetCollectionResponse < Struct.new(
      :collection_details,
      :collection_error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A list of VPC endpoint identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/BatchGetVpcEndpointRequest AWS API Documentation
    #
    class BatchGetVpcEndpointRequest < Struct.new(
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint_details
    #   Details about the specified VPC endpoint.
    #   @return [Array<Types::VpcEndpointDetail>]
    #
    # @!attribute [rw] vpc_endpoint_error_details
    #   Error information for a failed request.
    #   @return [Array<Types::VpcEndpointErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/BatchGetVpcEndpointResponse AWS API Documentation
    #
    class BatchGetVpcEndpointResponse < Struct.new(
      :vpc_endpoint_details,
      :vpc_endpoint_error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum capacity limits for all OpenSearch Serverless collections,
    # in OpenSearch Compute Units (OCUs). These limits are used to scale
    # your collections based on the current workload. For more information,
    # see [Managing capacity limits for Amazon OpenSearch Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html
    #
    # @!attribute [rw] max_indexing_capacity_in_ocu
    #   The maximum indexing capacity for collections.
    #   @return [Integer]
    #
    # @!attribute [rw] max_search_capacity_in_ocu
    #   The maximum search capacity for collections.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CapacityLimits AWS API Documentation
    #
    class CapacityLimits < Struct.new(
      :max_indexing_capacity_in_ocu,
      :max_search_capacity_in_ocu)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about each OpenSearch Serverless collection, including the
    # collection endpoint and the OpenSearch Dashboards endpoint.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the collection.
    #   @return [String]
    #
    # @!attribute [rw] collection_endpoint
    #   Collection-specific endpoint used to submit index, search, and data
    #   upload requests to an OpenSearch Serverless collection.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The Epoch time when the collection was created.
    #   @return [Integer]
    #
    # @!attribute [rw] dashboard_endpoint
    #   Collection-specific endpoint used to access OpenSearch Dashboards.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the collection.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the collection.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the Amazon Web Services KMS key used to encrypt the
    #   collection.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the collection was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the collection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the collection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CollectionDetail AWS API Documentation
    #
    class CollectionDetail < Struct.new(
      :arn,
      :collection_endpoint,
      :created_date,
      :dashboard_endpoint,
      :description,
      :id,
      :kms_key_arn,
      :last_modified_date,
      :name,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information for an OpenSearch Serverless request.
    #
    # @!attribute [rw] error_code
    #   The error code for the request. For example, `NOT_FOUND`.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A description of the error. For example, `The specified Collection
    #   is not found.`
    #   @return [String]
    #
    # @!attribute [rw] id
    #   If the request contains collection IDs, the response includes the
    #   IDs provided in the request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   If the request contains collection names, the response includes the
    #   names provided in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CollectionErrorDetail AWS API Documentation
    #
    class CollectionErrorDetail < Struct.new(
      :error_code,
      :error_message,
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of filter keys that you can use for LIST, UPDATE, and DELETE
    # requests to OpenSearch Serverless collections.
    #
    # @!attribute [rw] name
    #   The name of the collection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CollectionFilters AWS API Documentation
    #
    class CollectionFilters < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about each OpenSearch Serverless collection.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the collection.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the collection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the collection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CollectionSummary AWS API Documentation
    #
    class CollectionSummary < Struct.new(
      :arn,
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # When creating a resource, thrown when a resource with the same name
    # already exists or is being created. When deleting a resource, thrown
    # when the resource is not in the ACTIVE or FAILED state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the policy. Typically used to store information
    #   about the permissions defined in the policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON policy document to use as the content for the policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateAccessPolicyRequest AWS API Documentation
    #
    class CreateAccessPolicyRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :policy,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_policy_detail
    #   Details about the created access policy.
    #   @return [Types::AccessPolicyDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateAccessPolicyResponse AWS API Documentation
    #
    class CreateAccessPolicyResponse < Struct.new(
      :access_policy_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the created OpenSearch Serverless collection.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the collection.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The Epoch time when the collection was created.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the collection.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the collection.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key with which to encrypt
    #   the collection.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the collection was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the collection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the collection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateCollectionDetail AWS API Documentation
    #
    class CreateCollectionDetail < Struct.new(
      :arn,
      :created_date,
      :description,
      :id,
      :kms_key_arn,
      :last_modified_date,
      :name,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the collection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the collection.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An arbitrary set of tags (key–value pairs) to associate with the
    #   OpenSearch Serverless collection.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] type
    #   The type of collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateCollectionRequest AWS API Documentation
    #
    class CreateCollectionRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_collection_detail
    #   Details about the collection.
    #   @return [Types::CreateCollectionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateCollectionResponse AWS API Documentation
    #
    class CreateCollectionResponse < Struct.new(
      :create_collection_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] saml_options
    #   Describes SAML options in in the form of a key-value map. This field
    #   is required if you specify `saml` for the `type` parameter.
    #   @return [Types::SamlConfigOptions]
    #
    # @!attribute [rw] type
    #   The type of security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateSecurityConfigRequest AWS API Documentation
    #
    class CreateSecurityConfigRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :saml_options,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_config_detail
    #   Details about the created security configuration.
    #   @return [Types::SecurityConfigDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateSecurityConfigResponse AWS API Documentation
    #
    class CreateSecurityConfigResponse < Struct.new(
      :security_config_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the policy. Typically used to store information
    #   about the permissions defined in the policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON policy document to use as the content for the new policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of security policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateSecurityPolicyRequest AWS API Documentation
    #
    class CreateSecurityPolicyRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :policy,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_policy_detail
    #   Details about the created security policy.
    #   @return [Types::SecurityPolicyDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateSecurityPolicyResponse AWS API Documentation
    #
    class CreateSecurityPolicyResponse < Struct.new(
      :security_policy_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creation details for an OpenSearch Serverless-managed interface
    # endpoint. For more information, see [Access Amazon OpenSearch
    # Serverless using an interface endpoint][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html
    #
    # @!attribute [rw] id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status in the endpoint creation process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateVpcEndpointDetail AWS API Documentation
    #
    class CreateVpcEndpointDetail < Struct.new(
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the interface endpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifiers of the security groups that define the ports,
    #   protocols, and sources for inbound traffic that you are authorizing
    #   into your endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   The ID of one or more subnets from which you'll access OpenSearch
    #   Serverless.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC from which you'll access OpenSearch Serverless.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateVpcEndpointRequest AWS API Documentation
    #
    class CreateVpcEndpointRequest < Struct.new(
      :client_token,
      :name,
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_vpc_endpoint_detail
    #   Details about the created interface VPC endpoint.
    #   @return [Types::CreateVpcEndpointDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateVpcEndpointResponse AWS API Documentation
    #
    class CreateVpcEndpointResponse < Struct.new(
      :create_vpc_endpoint_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the policy to delete.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteAccessPolicyRequest AWS API Documentation
    #
    class DeleteAccessPolicyRequest < Struct.new(
      :client_token,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteAccessPolicyResponse AWS API Documentation
    #
    class DeleteAccessPolicyResponse < Aws::EmptyStructure; end

    # Details about a deleted OpenSearch Serverless collection.
    #
    # @!attribute [rw] id
    #   The unique identifier of the collection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the collection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteCollectionDetail AWS API Documentation
    #
    class DeleteCollectionDetail < Struct.new(
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the collection. For example,
    #   `1iu5usc406kd`. The ID is part of the collection endpoint. You can
    #   also retrieve it using the [ListCollections][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteCollectionRequest AWS API Documentation
    #
    class DeleteCollectionRequest < Struct.new(
      :client_token,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delete_collection_detail
    #   Details of the deleted collection.
    #   @return [Types::DeleteCollectionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteCollectionResponse AWS API Documentation
    #
    class DeleteCollectionResponse < Struct.new(
      :delete_collection_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The security configuration identifier. For SAML the ID will be
    #   `saml/<accountId>/<idpProviderName>`. For example,
    #   `saml/123456789123/OKTADev`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteSecurityConfigRequest AWS API Documentation
    #
    class DeleteSecurityConfigRequest < Struct.new(
      :client_token,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteSecurityConfigResponse AWS API Documentation
    #
    class DeleteSecurityConfigResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the policy to delete.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteSecurityPolicyRequest AWS API Documentation
    #
    class DeleteSecurityPolicyRequest < Struct.new(
      :client_token,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteSecurityPolicyResponse AWS API Documentation
    #
    class DeleteSecurityPolicyResponse < Aws::EmptyStructure; end

    # Deletion details for an OpenSearch Serverless-managed interface
    # endpoint.
    #
    # @!attribute [rw] id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint deletion process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteVpcEndpointDetail AWS API Documentation
    #
    class DeleteVpcEndpointDetail < Struct.new(
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The VPC endpoint identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteVpcEndpointRequest AWS API Documentation
    #
    class DeleteVpcEndpointRequest < Struct.new(
      :client_token,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delete_vpc_endpoint_detail
    #   Details about the deleted endpoint.
    #   @return [Types::DeleteVpcEndpointDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteVpcEndpointResponse AWS API Documentation
    #
    class DeleteVpcEndpointResponse < Struct.new(
      :delete_vpc_endpoint_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Tye type of policy. Currently the only supported value is `data`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetAccessPolicyRequest AWS API Documentation
    #
    class GetAccessPolicyRequest < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_policy_detail
    #   Details about the requested access policy.
    #   @return [Types::AccessPolicyDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetAccessPolicyResponse AWS API Documentation
    #
    class GetAccessPolicyResponse < Struct.new(
      :access_policy_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetAccountSettingsRequest AWS API Documentation
    #
    class GetAccountSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] account_settings_detail
    #   OpenSearch Serverless-related details for the current account.
    #   @return [Types::AccountSettingsDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetAccountSettingsResponse AWS API Documentation
    #
    class GetAccountSettingsResponse < Struct.new(
      :account_settings_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetPoliciesStatsRequest AWS API Documentation
    #
    class GetPoliciesStatsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] access_policy_stats
    #   Information about the data access policies in your account.
    #   @return [Types::AccessPolicyStats]
    #
    # @!attribute [rw] security_config_stats
    #   Information about the security configurations in your account.
    #   @return [Types::SecurityConfigStats]
    #
    # @!attribute [rw] security_policy_stats
    #   Information about the security policies in your account.
    #   @return [Types::SecurityPolicyStats]
    #
    # @!attribute [rw] total_policy_count
    #   The total number of OpenSearch Serverless security policies and
    #   configurations in your account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetPoliciesStatsResponse AWS API Documentation
    #
    class GetPoliciesStatsResponse < Struct.new(
      :access_policy_stats,
      :security_config_stats,
      :security_policy_stats,
      :total_policy_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetSecurityConfigRequest AWS API Documentation
    #
    class GetSecurityConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_config_detail
    #   Details of the requested security configuration.
    #   @return [Types::SecurityConfigDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetSecurityConfigResponse AWS API Documentation
    #
    class GetSecurityConfigResponse < Struct.new(
      :security_config_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the security policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of security policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetSecurityPolicyRequest AWS API Documentation
    #
    class GetSecurityPolicyRequest < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_policy_detail
    #   Details about the requested security policy.
    #   @return [Types::SecurityPolicyDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetSecurityPolicyResponse AWS API Documentation
    #
    class GetSecurityPolicyResponse < Struct.new(
      :security_policy_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when an error internal to the service occurs while processing a
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   The default is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListAccessPolicies` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListAccessPolicies` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   Resource filters (can be collections or indexes) that policies can
    #   apply to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of access policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListAccessPoliciesRequest AWS API Documentation
    #
    class ListAccessPoliciesRequest < Struct.new(
      :max_results,
      :next_token,
      :resource,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_policy_summaries
    #   Details about the requested access policies.
    #   @return [Array<Types::AccessPolicySummary>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListAccessPoliciesResponse AWS API Documentation
    #
    class ListAccessPoliciesResponse < Struct.new(
      :access_policy_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_filters
    #   List of filter names and values that you can use for requests.
    #   @return [Types::CollectionFilters]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Default is 20. You can use
    #   `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListCollections` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `ListCollections` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListCollectionsRequest AWS API Documentation
    #
    class ListCollectionsRequest < Struct.new(
      :collection_filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_summaries
    #   Details about each collection.
    #   @return [Array<Types::CollectionSummary>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListCollectionsResponse AWS API Documentation
    #
    class ListCollectionsResponse < Struct.new(
      :collection_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   The default is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListSecurityConfigs` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListSecurityConfigs` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListSecurityConfigsRequest AWS API Documentation
    #
    class ListSecurityConfigsRequest < Struct.new(
      :max_results,
      :next_token,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] security_config_summaries
    #   Details about the security configurations in your account.
    #   @return [Array<Types::SecurityConfigSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListSecurityConfigsResponse AWS API Documentation
    #
    class ListSecurityConfigsResponse < Struct.new(
      :next_token,
      :security_config_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   The default is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListSecurityPolicies` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListSecurityPolicies` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   Resource filters (can be collection or indexes) that policies can
    #   apply to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListSecurityPoliciesRequest AWS API Documentation
    #
    class ListSecurityPoliciesRequest < Struct.new(
      :max_results,
      :next_token,
      :resource,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] security_policy_summaries
    #   Details about the security policies in your account.
    #   @return [Array<Types::SecurityPolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListSecurityPoliciesResponse AWS API Documentation
    #
    class ListSecurityPoliciesResponse < Struct.new(
      :next_token,
      :security_policy_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. The resource must be
    #   active (not in the `DELETING` state), and must be owned by the
    #   account ID included in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   The default is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListVpcEndpoints` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `ListVpcEndpoints` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_filters
    #   Filter the results according to the current status of the VPC
    #   endpoint. Possible statuses are `CREATING`, `DELETING`, `UPDATING`,
    #   `ACTIVE`, and `FAILED`.
    #   @return [Types::VpcEndpointFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListVpcEndpointsRequest AWS API Documentation
    #
    class ListVpcEndpointsRequest < Struct.new(
      :max_results,
      :next_token,
      :vpc_endpoint_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_summaries
    #   Details about each VPC endpoint, including the name and current
    #   status.
    #   @return [Array<Types::VpcEndpointSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListVpcEndpointsResponse AWS API Documentation
    #
    class ListVpcEndpointsResponse < Struct.new(
      :next_token,
      :vpc_endpoint_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # OCU Limit Exceeded for service limits
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/OcuLimitExceededException AWS API Documentation
    #
    class OcuLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when accessing or deleting a resource that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes SAML options for an OpenSearch Serverless security
    # configuration in the form of a key-value map.
    #
    # @!attribute [rw] group_attribute
    #   The group attribute for this SAML integration.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The XML IdP metadata file generated from your identity provider.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout
    #   The session timeout, in minutes. Default is 60 minutes (12 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] user_attribute
    #   A user attribute for this SAML integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/SamlConfigOptions AWS API Documentation
    #
    class SamlConfigOptions < Struct.new(
      :group_attribute,
      :metadata,
      :session_timeout,
      :user_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a security configuration for OpenSearch Serverless.
    #
    # @!attribute [rw] config_version
    #   The version of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date the configuration was created.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The timestamp of when the configuration was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] saml_options
    #   SAML options for the security configuration in the form of a
    #   key-value map.
    #   @return [Types::SamlConfigOptions]
    #
    # @!attribute [rw] type
    #   The type of security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/SecurityConfigDetail AWS API Documentation
    #
    class SecurityConfigDetail < Struct.new(
      :config_version,
      :created_date,
      :description,
      :id,
      :last_modified_date,
      :saml_options,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics for an OpenSearch Serverless security configuration.
    #
    # @!attribute [rw] saml_config_count
    #   The number of security configurations in the current account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/SecurityConfigStats AWS API Documentation
    #
    class SecurityConfigStats < Struct.new(
      :saml_config_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a security configuration for OpenSearch Serverless.
    #
    # @!attribute [rw] config_version
    #   The version of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The Epoch time when the security configuration was created.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The timestamp of when the configuration was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/SecurityConfigSummary AWS API Documentation
    #
    class SecurityConfigSummary < Struct.new(
      :config_version,
      :created_date,
      :description,
      :id,
      :last_modified_date,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an OpenSearch Serverless security policy.
    #
    # @!attribute [rw] created_date
    #   The date the policy was created.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the security policy.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The timestamp of when the policy was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON policy document without any whitespaces.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] policy_version
    #   The version of the policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of security policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/SecurityPolicyDetail AWS API Documentation
    #
    class SecurityPolicyDetail < Struct.new(
      :created_date,
      :description,
      :last_modified_date,
      :name,
      :policy,
      :policy_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics for an OpenSearch Serverless security policy.
    #
    # @!attribute [rw] encryption_policy_count
    #   The number of encryption policies in the current account.
    #   @return [Integer]
    #
    # @!attribute [rw] network_policy_count
    #   The number of network policies in the current account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/SecurityPolicyStats AWS API Documentation
    #
    class SecurityPolicyStats < Struct.new(
      :encryption_policy_count,
      :network_policy_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a security policy for OpenSearch Serverless.
    #
    # @!attribute [rw] created_date
    #   The date the policy was created.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the security policy.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The timestamp of when the policy was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version
    #   The version of the policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of security policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/SecurityPolicySummary AWS API Documentation
    #
    class SecurityPolicySummary < Struct.new(
      :created_date,
      :description,
      :last_modified_date,
      :name,
      :policy_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when you attempt to create more resources than the service
    # allows based on service quotas.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service Quotas requirement to identify originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map of key-value pairs associated to an OpenSearch Serverless
    # resource.
    #
    # @!attribute [rw] key
    #   The key to use in the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. The resource must be
    #   active (not in the `DELETING` state), and must be owned by the
    #   account ID included in the request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags (key-value pairs) to add to the resource. All tag
    #   keys in the request must be unique.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   The resource must be active (not in the `DELETING` state), and must
    #   be owned by the account ID included in the request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag or set of tags to remove from the resource. All tag keys in
    #   the request must be unique.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the policy. Typically used to store information
    #   about the permissions defined in the policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON policy document to use as the content for the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version
    #   The version of the policy being updated.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateAccessPolicyRequest AWS API Documentation
    #
    class UpdateAccessPolicyRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :policy,
      :policy_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_policy_detail
    #   Details about the updated access policy.
    #   @return [Types::AccessPolicyDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateAccessPolicyResponse AWS API Documentation
    #
    class UpdateAccessPolicyResponse < Struct.new(
      :access_policy_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_limits
    #   The maximum capacity limits for all OpenSearch Serverless
    #   collections, in OpenSearch Compute Units (OCUs). These limits are
    #   used to scale your collections based on the current workload. For
    #   more information, see [Managing capacity limits for Amazon
    #   OpenSearch Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html
    #   @return [Types::CapacityLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateAccountSettingsRequest AWS API Documentation
    #
    class UpdateAccountSettingsRequest < Struct.new(
      :capacity_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_settings_detail
    #   OpenSearch Serverless-related settings for the current Amazon Web
    #   Services account.
    #   @return [Types::AccountSettingsDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateAccountSettingsResponse AWS API Documentation
    #
    class UpdateAccountSettingsResponse < Struct.new(
      :account_settings_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an updated OpenSearch Serverless collection.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the collection.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time when the collection was created.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the collection.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the collection.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the collection was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the collection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the collection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The collection type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateCollectionDetail AWS API Documentation
    #
    class UpdateCollectionDetail < Struct.new(
      :arn,
      :created_date,
      :description,
      :id,
      :last_modified_date,
      :name,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the collection.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateCollectionRequest AWS API Documentation
    #
    class UpdateCollectionRequest < Struct.new(
      :client_token,
      :description,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_collection_detail
    #   Details about the updated collection.
    #   @return [Types::UpdateCollectionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateCollectionResponse AWS API Documentation
    #
    class UpdateCollectionResponse < Struct.new(
      :update_collection_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] config_version
    #   The version of the security configuration to be updated. You can
    #   find the most recent version of a security configuration using the
    #   `GetSecurityPolicy` command.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The security configuration identifier. For SAML the ID will be
    #   `saml/<accountId>/<idpProviderName>`. For example,
    #   `saml/123456789123/OKTADev`.
    #   @return [String]
    #
    # @!attribute [rw] saml_options
    #   SAML options in in the form of a key-value map.
    #   @return [Types::SamlConfigOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateSecurityConfigRequest AWS API Documentation
    #
    class UpdateSecurityConfigRequest < Struct.new(
      :client_token,
      :config_version,
      :description,
      :id,
      :saml_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_config_detail
    #   Details about the updated security configuration.
    #   @return [Types::SecurityConfigDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateSecurityConfigResponse AWS API Documentation
    #
    class UpdateSecurityConfigResponse < Struct.new(
      :security_config_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the policy. Typically used to store information
    #   about the permissions defined in the policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON policy document to use as the content for the new policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version
    #   The version of the policy being updated.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of access policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateSecurityPolicyRequest AWS API Documentation
    #
    class UpdateSecurityPolicyRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :policy,
      :policy_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_policy_detail
    #   Details about the updated security policy.
    #   @return [Types::SecurityPolicyDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateSecurityPolicyResponse AWS API Documentation
    #
    class UpdateSecurityPolicyResponse < Struct.new(
      :security_policy_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update details for an OpenSearch Serverless-managed interface
    # endpoint.
    #
    # @!attribute [rw] id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The timestamp of when the endpoint was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifiers of the security groups that define the ports,
    #   protocols, and sources for inbound traffic that you are authorizing
    #   into your endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint update process.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The ID of the subnets from which you access OpenSearch Serverless.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateVpcEndpointDetail AWS API Documentation
    #
    class UpdateVpcEndpointDetail < Struct.new(
      :id,
      :last_modified_date,
      :name,
      :security_group_ids,
      :status,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] add_security_group_ids
    #   The unique identifiers of the security groups to add to the
    #   endpoint. Security groups define the ports, protocols, and sources
    #   for inbound traffic that you are authorizing into your endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] add_subnet_ids
    #   The ID of one or more subnets to add to the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the interface endpoint to update.
    #   @return [String]
    #
    # @!attribute [rw] remove_security_group_ids
    #   The unique identifiers of the security groups to remove from the
    #   endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remove_subnet_ids
    #   The unique identifiers of the subnets to remove from the endpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateVpcEndpointRequest AWS API Documentation
    #
    class UpdateVpcEndpointRequest < Struct.new(
      :add_security_group_ids,
      :add_subnet_ids,
      :client_token,
      :id,
      :remove_security_group_ids,
      :remove_subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_vpc_endpoint_detail
    #   Details about the updated VPC endpoint.
    #   @return [Types::UpdateVpcEndpointDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateVpcEndpointResponse AWS API Documentation
    #
    class UpdateVpcEndpointResponse < Struct.new(
      :update_vpc_endpoint_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when the HTTP request contains invalid input or is missing
    # required input.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an OpenSearch Serverless-managed interface endpoint.
    #
    # @!attribute [rw] created_date
    #   The date the endpoint was created.
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifiers of the security groups that define the ports,
    #   protocols, and sources for inbound traffic that you are authorizing
    #   into your endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The ID of the subnets from which you access OpenSearch Serverless.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC from which you access OpenSearch Serverless.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/VpcEndpointDetail AWS API Documentation
    #
    class VpcEndpointDetail < Struct.new(
      :created_date,
      :id,
      :name,
      :security_group_ids,
      :status,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information for a failed `BatchGetVpcEndpoint` request.
    #
    # @!attribute [rw] error_code
    #   The error code for the failed request.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message describing the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the VPC endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/VpcEndpointErrorDetail AWS API Documentation
    #
    class VpcEndpointErrorDetail < Struct.new(
      :error_code,
      :error_message,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter the results of a `ListVpcEndpoints` request.
    #
    # @!attribute [rw] status
    #   The current status of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/VpcEndpointFilters AWS API Documentation
    #
    class VpcEndpointFilters < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC endpoint object.
    #
    # @!attribute [rw] id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/VpcEndpointSummary AWS API Documentation
    #
    class VpcEndpointSummary < Struct.new(
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

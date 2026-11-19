# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceDeployment
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request configuration has conflicts. For details, see the
    # accompanying error message.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the resource associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the deployment configuration settings for the Data as a
    # Service delivery option, including the fulfillment URL that AWS
    # Marketplace redirects buyers to after they subscribe.
    #
    # @!attribute [rw] fulfillment_url
    #   The HTTPS URL that AWS Marketplace redirects buyers to after they
    #   subscribe to the product. The value must be a valid URI that uses
    #   the HTTPS scheme. Maximum length: 2,048 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/DataAsAServiceConfigurationDetail AWS API Documentation
    #
    class DataAsAServiceConfigurationDetail < Struct.new(
      :fulfillment_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment configuration. Exactly one member must be set, and it
    # must match the delivery option type.
    #
    # @note DeploymentConfigurationDetail is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DeploymentConfigurationDetail is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DeploymentConfigurationDetail corresponding to the set member.
    #
    # @!attribute [rw] data_as_a_service
    #   The deployment configuration settings for the Data as a Service
    #   delivery option, including the fulfillment URL that AWS Marketplace
    #   redirects buyers to after they subscribe.
    #   @return [Types::DataAsAServiceConfigurationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/DeploymentConfigurationDetail AWS API Documentation
    #
    class DeploymentConfigurationDetail < Struct.new(
      :data_as_a_service,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DataAsAService < DeploymentConfigurationDetail; end
      class Unknown < DeploymentConfigurationDetail; end
    end

    # Contains summary information about a deployment configuration job,
    # including its identifier, status, configuration, and creation time.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the deployment configuration job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment configuration job.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The deployment configuration submitted with the job.
    #   @return [Types::DeploymentConfigurationDetail]
    #
    # @!attribute [rw] created_at
    #   The date and time when the job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/DeploymentConfigurationJobSummary AWS API Documentation
    #
    class DeploymentConfigurationJobSummary < Struct.new(
      :job_id,
      :status,
      :configuration,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The shape containing the requested deployment parameter name and
    # secretString.
    #
    # <note markdown="1"> To support AWS CloudFormation dynamic references to this resource
    # using Quick Launch, this value must match a parameter defined in the
    # CloudFormation template provided to buyers.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The desired name of the deployment parameter. This is the identifier
    #   on which deployment parameters are keyed for a given buyer and
    #   product. If this name matches an existing deployment parameter, this
    #   request will update the existing resource.
    #   @return [String]
    #
    # @!attribute [rw] secret_string
    #   The text to encrypt and store in the secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/DeploymentParameterInput AWS API Documentation
    #
    class DeploymentParameterInput < Struct.new(
      :name,
      :secret_string)
      SENSITIVE = [:secret_string]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The ID of the AWS Marketplace product, for example
    #   `prod-1234567890abc`.
    #   @return [String]
    #
    # @!attribute [rw] delivery_option_type
    #   The delivery option type of the deployment configuration.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the deployment configuration job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/GetDeploymentConfigurationJobRequest AWS API Documentation
    #
    class GetDeploymentConfigurationJobRequest < Struct.new(
      :catalog,
      :product_id,
      :delivery_option_type,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier of the deployment configuration job.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The deployment configuration submitted with the job.
    #   @return [Types::DeploymentConfigurationDetail]
    #
    # @!attribute [rw] status
    #   The status of the deployment configuration job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] configuration_arn
    #   The Amazon Resource Name (ARN) of the deployment configuration. This
    #   field is present only when the job status is `SUCCEEDED`.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The date and time when the job reached the `SUCCEEDED` or `FAILED`
    #   status.
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   The error code that describes why the job failed. This field is
    #   present only when the job status is `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that describes why the job failed. This field is present
    #   only when the job status is `FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/GetDeploymentConfigurationJobResponse AWS API Documentation
    #
    class GetDeploymentConfigurationJobResponse < Struct.new(
      :job_id,
      :configuration,
      :status,
      :created_at,
      :configuration_arn,
      :ended_at,
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The ID of the AWS Marketplace product, for example
    #   `prod-1234567890abc`.
    #   @return [String]
    #
    # @!attribute [rw] delivery_option_type
    #   The delivery option type of the deployment configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/GetDeploymentConfigurationRequest AWS API Documentation
    #
    class GetDeploymentConfigurationRequest < Struct.new(
      :catalog,
      :product_id,
      :delivery_option_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The active deployment configuration.
    #   @return [Types::DeploymentConfigurationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/GetDeploymentConfigurationResponse AWS API Documentation
    #
    class GetDeploymentConfigurationResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal service exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The ID of the AWS Marketplace product, for example
    #   `prod-1234567890abc`.
    #   @return [String]
    #
    # @!attribute [rw] delivery_option_type
    #   The delivery option type of the deployment configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in a single page. Valid values
    #   are 1 through 100. The default is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. Use the value returned in
    #   the previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ListDeploymentConfigurationJobsRequest AWS API Documentation
    #
    class ListDeploymentConfigurationJobsRequest < Struct.new(
      :catalog,
      :product_id,
      :delivery_option_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of deployment configuration job summaries, ordered from
    #   newest to oldest.
    #   @return [Array<Types::DeploymentConfigurationJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. This value is absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ListDeploymentConfigurationJobsResponse AWS API Documentation
    #
    class ListDeploymentConfigurationJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to list tags
    #   on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of key-value pairs, where each pair represents a tag present
    #   on the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product for which AWS Marketplace will save secrets for the
    #   buyer’s account.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] deployment_parameter
    #   The deployment parameter targeted to the acceptor of an agreement
    #   for which to create the AWS Secrets Manager resource.
    #   @return [Types::DeploymentParameterInput]
    #
    # @!attribute [rw] tags
    #   A map of key-value pairs, where each pair represents a tag saved to
    #   the resource. Tags will only be applied for create operations, and
    #   they'll be ignored if the resource already exists.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expiration_date
    #   The date when deployment parameters expire and are scheduled for
    #   deletion.
    #   @return [Time]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for deployment parameters. A unique identifier
    #   for the new version.
    #
    #   <note markdown="1"> This field is not required if you're calling using an AWS SDK.
    #   Otherwise, a `clientToken` must be provided with the request.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/PutDeploymentParameterRequest AWS API Documentation
    #
    class PutDeploymentParameterRequest < Struct.new(
      :catalog,
      :product_id,
      :agreement_id,
      :deployment_parameter,
      :tags,
      :expiration_date,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the deployment
    #   parameter resource you want to create or update.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] deployment_parameter_id
    #   The unique identifier of the deployment parameter.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of key-value pairs, where each pair represents a tag saved to
    #   the resource. Tags will only be applied for create operations, and
    #   they'll be ignored if the resource already exists.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/PutDeploymentParameterResponse AWS API Documentation
    #
    class PutDeploymentParameterResponse < Struct.new(
      :resource_arn,
      :agreement_id,
      :deployment_parameter_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource wasn't found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of requests per account has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The ID of the AWS Marketplace product, for example
    #   `prod-1234567890abc`.
    #   @return [String]
    #
    # @!attribute [rw] delivery_option_type
    #   The delivery option type of the deployment configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The deployment configuration to publish.
    #   @return [Types::DeploymentConfigurationDetail]
    #
    # @!attribute [rw] tags
    #   A map of key-value pairs, where each pair represents a tag to apply
    #   to the deployment configuration. Only the request that creates the
    #   deployment configuration can apply tags. If the deployment
    #   configuration already exists, a request that includes one or more
    #   tags fails with a `ValidationException`. To change tags on an
    #   existing deployment configuration, use `TagResource` and
    #   `UntagResource`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If you retry a
    #   request with the same token and the same input, the service returns
    #   the original job instead of starting a new one. If you reuse a token
    #   with different input, the request fails with a `ConflictException`.
    #
    #   <note markdown="1"> This field is not required if you're calling using an AWS SDK.
    #   Otherwise, a `clientToken` must be provided with the request.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/StartDeploymentConfigurationJobRequest AWS API Documentation
    #
    class StartDeploymentConfigurationJobRequest < Struct.new(
      :catalog,
      :product_id,
      :delivery_option_type,
      :configuration,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier of the deployment configuration job.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The deployment configuration submitted with the job.
    #   @return [Types::DeploymentConfigurationDetail]
    #
    # @!attribute [rw] status
    #   The status of the deployment configuration job. The value is
    #   `IN_PROGRESS`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/StartDeploymentConfigurationJobResponse AWS API Documentation
    #
    class StartDeploymentConfigurationJobResponse < Struct.new(
      :job_id,
      :configuration,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of key-value pairs, where each pair represents a tag present
    #   on the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Too many requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to remove the tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names of tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # An error occurred during validation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The field name associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


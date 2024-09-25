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

    # The shape containing the requested deployment parameter name and
    # secretString.
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the deployment
    #   parameter resource you want to list tags on.
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

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWS Marketplace`
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for deployment parameters. A unique identifier
    #   for the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] deployment_parameter
    #   The deployment parameter targeted to the acceptor of an agreement
    #   for which to create the AWS Secret Manager resource.
    #   @return [Types::DeploymentParameterInput]
    #
    # @!attribute [rw] expiration_date
    #   The date when deployment parameters expire and are scheduled for
    #   deletion.
    #   @return [Time]
    #
    # @!attribute [rw] product_id
    #   The product for which AWS Marketplace will save secrets for the
    #   buyer’s account.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of key-value pairs, where each pair represents a tag saved to
    #   the resource. Tags will only be applied for create operations, and
    #   they'll be ignored if the resource already exists.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/PutDeploymentParameterRequest AWS API Documentation
    #
    class PutDeploymentParameterRequest < Struct.new(
      :agreement_id,
      :catalog,
      :client_token,
      :deployment_parameter,
      :expiration_date,
      :product_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier of the agreement.
    #   @return [String]
    #
    # @!attribute [rw] deployment_parameter_id
    #   The unique identifier of the deployment parameter.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the deployment
    #   parameter resource you want to create or update.
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
      :agreement_id,
      :deployment_parameter_id,
      :resource_arn,
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
    # @!attribute [rw] field_name
    #   The field name associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


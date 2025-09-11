# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceDeployment
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request configuration has conflicts. For details, see the accompanying error message.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the resource associated with the error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The shape containing the requested deployment parameter name and secretString.</p>
    #          <note>
    #             <p>To support AWS CloudFormation dynamic references to this resource using Quick Launch,
    #         this value must match a parameter defined in the CloudFormation templated provided to
    #         buyers.</p>
    #          </note>
    # @!attribute name
    #   <p>The desired name of the deployment parameter. This is the identifier on which deployment parameters are keyed for a given buyer and product. If this name matches an existing deployment parameter, this request will update the existing resource.</p>
    #   @return [String]
    # @!attribute secret_string
    #   <p>The text to encrypt and store in the secret.</p>
    #   @return [String]
    class DeploymentParameterInput < Struct.new(
      :name,
      :secret_string,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was an internal service exception.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the deployment parameter resource you want to list tags on.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of key-value pairs, where each pair represents a tag present on the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product for which AWS Marketplace will save secrets for the buyer’s account.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute deployment_parameter
    #   <p>The deployment parameter targeted to the acceptor of an agreement for which to create the AWS Secret Manager resource.</p>
    #   @return [Types::DeploymentParameterInput]
    # @!attribute tags
    #   <p>A map of key-value pairs, where each pair represents a tag saved to the resource. Tags will only be applied for create operations, and they'll be ignored if the resource already exists.</p>
    #   @return [Hash<String, String>]
    # @!attribute expiration_date
    #   <p>The date when deployment parameters expire and are scheduled for deletion.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>The idempotency token for deployment parameters. A unique identifier for the new version.</p>
    #            <note>
    #               <p>This field is not required if you're calling using an AWS SDK. Otherwise, a
    #             <code>clientToken</code> must be provided with the request.</p>
    #            </note>
    #   @return [String]
    class PutDeploymentParameterRequest < Struct.new(
      :catalog,
      :product_id,
      :agreement_id,
      :deployment_parameter,
      :tags,
      :expiration_date,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the deployment parameter resource you want to create or update.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>The unique identifier of the agreement.</p>
    #   @return [String]
    # @!attribute deployment_parameter_id
    #   <p>The unique identifier of the deployment parameter.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of key-value pairs, where each pair represents a tag saved to the resource. Tags will only be applied for create operations, and they'll be ignored if the resource already exists.</p>
    #   @return [Hash<String, String>]
    class PutDeploymentParameterResponse < Struct.new(
      :resource_arn,
      :agreement_id,
      :deployment_parameter_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource wasn't found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of requests per account has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of key-value pairs, where each pair represents a tag present on the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Too many requests.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to remove the tag from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names of tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred during validation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_name
    #   <p>The field name associated with the error.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :field_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

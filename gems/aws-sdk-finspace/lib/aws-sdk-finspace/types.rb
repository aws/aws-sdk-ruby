# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Finspace
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         name: "EnvironmentName", # required
    #         description: "Description",
    #         kms_key_id: "KmsKeyId",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         federation_mode: "FEDERATED", # accepts FEDERATED, LOCAL
    #         federation_parameters: {
    #           saml_metadata_document: "SamlMetadataDocument",
    #           saml_metadata_url: "url",
    #           application_call_back_url: "url",
    #           federation_urn: "urn",
    #           federation_provider_name: "FederationProviderName",
    #           attribute_map: {
    #             "FederationAttributeKey" => "url",
    #           },
    #         },
    #         superuser_parameters: {
    #           email_address: "EmailId", # required
    #           first_name: "NameString", # required
    #           last_name: "NameString", # required
    #         },
    #         data_bundles: ["DataBundleArn"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the FinSpace environment to be created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the FinSpace environment to be created.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key id to encrypt your data in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Add tags to your FinSpace environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO)
    #     via your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #   @return [Types::FederationParameters]
    #
    # @!attribute [rw] superuser_parameters
    #   Configuration information for the superuser.
    #   @return [Types::SuperuserParameters]
    #
    # @!attribute [rw] data_bundles
    #   The list of Amazon Resource Names (ARN) of the data bundles to
    #   install. Currently supported data bundle ARNs:
    #
    #   * `arn:aws:finspace:$\{Region\}::data-bundle/capital-markets-sample`
    #     - Contains sample Capital Markets datasets, categories and
    #     controlled vocabularies.
    #
    #   * `arn:aws:finspace:$\{Region\}::data-bundle/taq` (default) -
    #     Contains trades and quotes data in addition to sample Capital
    #     Markets data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateEnvironmentRequest AWS API Documentation
    #
    class CreateEnvironmentRequest < Struct.new(
      :name,
      :description,
      :kms_key_id,
      :tags,
      :federation_mode,
      :federation_parameters,
      :superuser_parameters,
      :data_bundles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The unique identifier for FinSpace environment that you created.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) of the FinSpace environment that you
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] environment_url
    #   The sign-in url for the web application of the FinSpace environment
    #   you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateEnvironmentResponse AWS API Documentation
    #
    class CreateEnvironmentResponse < Struct.new(
      :environment_id,
      :environment_arn,
      :environment_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "IdType", # required
    #       }
    #
    # @!attribute [rw] environment_id
    #   The identifier for the FinSpace environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteEnvironmentResponse AWS API Documentation
    #
    class DeleteEnvironmentResponse < Aws::EmptyStructure; end

    # Represents an FinSpace environment.
    #
    # @!attribute [rw] name
    #   The name of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account in which the FinSpace environment is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of creation of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_url
    #   The sign-in url for the web application of your FinSpace
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) of your FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] sage_maker_studio_domain_url
    #   The url of the integrated FinSpace notebook environment in your web
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key id used to encrypt in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_service_account_id
    #   The AWS account ID of the dedicated service account associated with
    #   your FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_mode
    #   The authentication mode for the environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #   @return [Types::FederationParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :name,
      :environment_id,
      :aws_account_id,
      :status,
      :environment_url,
      :description,
      :environment_arn,
      :sage_maker_studio_domain_url,
      :kms_key_id,
      :dedicated_service_account_id,
      :federation_mode,
      :federation_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information when authentication mode is FEDERATED.
    #
    # @note When making an API call, you may pass FederationParameters
    #   data as a hash:
    #
    #       {
    #         saml_metadata_document: "SamlMetadataDocument",
    #         saml_metadata_url: "url",
    #         application_call_back_url: "url",
    #         federation_urn: "urn",
    #         federation_provider_name: "FederationProviderName",
    #         attribute_map: {
    #           "FederationAttributeKey" => "url",
    #         },
    #       }
    #
    # @!attribute [rw] saml_metadata_document
    #   SAML 2.0 Metadata document from identity provider (IdP).
    #   @return [String]
    #
    # @!attribute [rw] saml_metadata_url
    #   Provide the metadata URL from your SAML 2.0 compliant identity
    #   provider (IdP).
    #   @return [String]
    #
    # @!attribute [rw] application_call_back_url
    #   The redirect or sign-in URL that should be entered into the SAML 2.0
    #   compliant identity provider configuration (IdP).
    #   @return [String]
    #
    # @!attribute [rw] federation_urn
    #   The Uniform Resource Name (URN). Also referred as Service Provider
    #   URN or Audience URI or Service Provider Entity ID.
    #   @return [String]
    #
    # @!attribute [rw] federation_provider_name
    #   Name of the identity provider (IdP).
    #   @return [String]
    #
    # @!attribute [rw] attribute_map
    #   SAML attribute name and value. The name must always be `Email` and
    #   the value should be set to the attribute definition in which user
    #   email is set. For example, name would be `Email` and value
    #   `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress`.
    #   Please check your SAML 2.0 compliant identity provider (IdP)
    #   documentation for details.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/FederationParameters AWS API Documentation
    #
    class FederationParameters < Struct.new(
      :saml_metadata_document,
      :saml_metadata_url,
      :application_call_back_url,
      :federation_urn,
      :federation_provider_name,
      :attribute_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "IdType", # required
    #       }
    #
    # @!attribute [rw] environment_id
    #   The identifier of the FinSpace environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   The name of the FinSpace environment.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetEnvironmentResponse AWS API Documentation
    #
    class GetEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid. Something is wrong with the input to the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service limit or quota is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token generated by FinSpace that specifies where to continue
    #   pagination if a previous request was truncated. To get the next set
    #   of pages, pass in the nextToken value from the response object of
    #   the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   A list of all of your FinSpace environments.
    #   @return [Array<Types::Environment>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListEnvironmentsResponse AWS API Documentation
    #
    class ListEnvironmentsResponse < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "EnvironmentArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of all tags for a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more resources can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or use Service Quotas to
    # request a service quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the superuser.
    #
    # @note When making an API call, you may pass SuperuserParameters
    #   data as a hash:
    #
    #       {
    #         email_address: "EmailId", # required
    #         first_name: "NameString", # required
    #         last_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] email_address
    #   The email address of the superuser.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the superuser.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the superuser.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/SuperuserParameters AWS API Documentation
    #
    class SuperuserParameters < Struct.new(
      :email_address,
      :first_name,
      :last_name)
      SENSITIVE = [:email_address]
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "EnvironmentArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "EnvironmentArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   A FinSpace resource from which you want to remove a tag or tags. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys (names) of one or more tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "IdType", # required
    #         name: "EnvironmentName",
    #         description: "Description",
    #         federation_mode: "FEDERATED", # accepts FEDERATED, LOCAL
    #         federation_parameters: {
    #           saml_metadata_document: "SamlMetadataDocument",
    #           saml_metadata_url: "url",
    #           application_call_back_url: "url",
    #           federation_urn: "urn",
    #           federation_provider_name: "FederationProviderName",
    #           attribute_map: {
    #             "FederationAttributeKey" => "url",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] environment_id
    #   The identifier of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO)
    #     via your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #   @return [Types::FederationParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateEnvironmentRequest AWS API Documentation
    #
    class UpdateEnvironmentRequest < Struct.new(
      :environment_id,
      :name,
      :description,
      :federation_mode,
      :federation_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   Returns the FinSpace environment object.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateEnvironmentResponse AWS API Documentation
    #
    class UpdateEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

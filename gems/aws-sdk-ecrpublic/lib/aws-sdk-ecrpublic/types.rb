# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECRPublic
  module Types

    # An authorization token data object that corresponds to a public
    # registry.
    #
    # @!attribute [rw] authorization_token
    #   A base64-encoded string that contains authorization data for a
    #   public Amazon ECR registry. When the string is decoded, it is
    #   presented in the format `user:password` for public registry
    #   authentication using `docker login`.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The Unix time in seconds and milliseconds when the authorization
    #   token expires. Authorization tokens are valid for 12 hours.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/AuthorizationData AWS API Documentation
    #
    class AuthorizationData < Struct.new(
      :authorization_token,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchCheckLayerAvailabilityRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryIdOrAlias",
    #         repository_name: "RepositoryName", # required
    #         layer_digests: ["BatchedOperationLayerDigest"], # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry that contains
    #   the image layers to check. If you do not specify a registry, the
    #   default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that is associated with the image layers
    #   to check.
    #   @return [String]
    #
    # @!attribute [rw] layer_digests
    #   The digests of the image layers to check.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/BatchCheckLayerAvailabilityRequest AWS API Documentation
    #
    class BatchCheckLayerAvailabilityRequest < Struct.new(
      :registry_id,
      :repository_name,
      :layer_digests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layers
    #   A list of image layer objects corresponding to the image layer
    #   references in the request.
    #   @return [Array<Types::Layer>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::LayerFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/BatchCheckLayerAvailabilityResponse AWS API Documentation
    #
    class BatchCheckLayerAvailabilityResponse < Struct.new(
      :layers,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteImageRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         image_ids: [ # required
    #           {
    #             image_digest: "ImageDigest",
    #             image_tag: "ImageTag",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   image to delete. If you do not specify a registry, the default
    #   public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository in a public registry that contains the image to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] image_ids
    #   A list of image ID references that correspond to images to delete.
    #   The format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/BatchDeleteImageRequest AWS API Documentation
    #
    class BatchDeleteImageRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_ids
    #   The image IDs of the deleted images.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::ImageFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/BatchDeleteImageResponse AWS API Documentation
    #
    class BatchDeleteImageResponse < Struct.new(
      :image_ids,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CompleteLayerUploadRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryIdOrAlias",
    #         repository_name: "RepositoryName", # required
    #         upload_id: "UploadId", # required
    #         layer_digests: ["LayerDigest"], # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry to which to upload
    #   layers. If you do not specify a registry, the default public
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository in a public registry to associate with
    #   the image layer.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID from a previous InitiateLayerUpload operation to
    #   associate with the image layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_digests
    #   The `sha256` digest of the image layer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/CompleteLayerUploadRequest AWS API Documentation
    #
    class CompleteLayerUploadRequest < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The public registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID associated with the layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_digest
    #   The `sha256` digest of the image layer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/CompleteLayerUploadResponse AWS API Documentation
    #
    class CompleteLayerUploadResponse < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         catalog_data: {
    #           description: "RepositoryDescription",
    #           architectures: ["Architecture"],
    #           operating_systems: ["OperatingSystem"],
    #           logo_image_blob: "data",
    #           about_text: "AboutText",
    #           usage_text: "UsageText",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name to use for the repository. This appears publicly in the
    #   Amazon ECR Public Gallery. The repository name may be specified on
    #   its own (such as `nginx-web-app`) or it can be prepended with a
    #   namespace to group the repository into a category (such as
    #   `project-a/nginx-web-app`).
    #   @return [String]
    #
    # @!attribute [rw] catalog_data
    #   The details about the repository that are publicly visible in the
    #   Amazon ECR Public Gallery.
    #   @return [Types::RepositoryCatalogDataInput]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the repository to help you categorize
    #   and organize them. Each tag consists of a key and an optional value,
    #   both of which you define. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length
    #   of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/CreateRepositoryRequest AWS API Documentation
    #
    class CreateRepositoryRequest < Struct.new(
      :repository_name,
      :catalog_data,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository that was created.
    #   @return [Types::Repository]
    #
    # @!attribute [rw] catalog_data
    #   The catalog data for a repository. This data is publicly visible in
    #   the Amazon ECR Public Gallery.
    #   @return [Types::RepositoryCatalogData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/CreateRepositoryResponse AWS API Documentation
    #
    class CreateRepositoryResponse < Struct.new(
      :repository,
      :catalog_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRepositoryPolicyRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry that contains
    #   the repository policy to delete. If you do not specify a registry,
    #   the default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that is associated with the repository
    #   policy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DeleteRepositoryPolicyRequest AWS API Documentation
    #
    class DeleteRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON repository policy that was deleted from the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DeleteRepositoryPolicyResponse AWS API Documentation
    #
    class DeleteRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry that contains
    #   the repository to delete. If you do not specify a registry, the
    #   default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to delete.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If a repository contains images, forces the deletion.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DeleteRepositoryRequest AWS API Documentation
    #
    class DeleteRepositoryRequest < Struct.new(
      :registry_id,
      :repository_name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository that was deleted.
    #   @return [Types::Repository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DeleteRepositoryResponse AWS API Documentation
    #
    class DeleteRepositoryResponse < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeImageTagsRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry that contains
    #   the repository in which to describe images. If you do not specify a
    #   registry, the default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the image tag details to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeImageTags` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to
    #   return. This option cannot be used when you specify images with
    #   `imageIds`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository results returned by
    #   `DescribeImageTags` in paginated output. When this parameter is
    #   used, `DescribeImageTags` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeImageTags` request with the returned `nextToken` value.
    #   This value can be between 1 and 1000. If this parameter is not used,
    #   then `DescribeImageTags` returns up to 100 results and a `nextToken`
    #   value, if applicable. This option cannot be used when you specify
    #   images with `imageIds`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeImageTagsRequest AWS API Documentation
    #
    class DescribeImageTagsRequest < Struct.new(
      :registry_id,
      :repository_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_tag_details
    #   The image tag details for the images in the requested repository.
    #   @return [Array<Types::ImageTagDetail>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `DescribeImageTags`
    #   request. When the results of a `DescribeImageTags` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeImageTagsResponse AWS API Documentation
    #
    class DescribeImageTagsResponse < Struct.new(
      :image_tag_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeImagesRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         image_ids: [
    #           {
    #             image_digest: "ImageDigest",
    #             image_tag: "ImageTag",
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry that contains
    #   the repository in which to describe images. If you do not specify a
    #   registry, the default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository that contains the images to describe.
    #   @return [String]
    #
    # @!attribute [rw] image_ids
    #   The list of image IDs for the requested repository.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeImages` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   This value is `null` when there are no more results to return. This
    #   option cannot be used when you specify images with `imageIds`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository results returned by
    #   `DescribeImages` in paginated output. When this parameter is used,
    #   `DescribeImages` only returns `maxResults` results in a single page
    #   along with a `nextToken` response element. The remaining results of
    #   the initial request can be seen by sending another `DescribeImages`
    #   request with the returned `nextToken` value. This value can be
    #   between 1 and 1000. If this parameter is not used, then
    #   `DescribeImages` returns up to 100 results and a `nextToken` value,
    #   if applicable. This option cannot be used when you specify images
    #   with `imageIds`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeImagesRequest AWS API Documentation
    #
    class DescribeImagesRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_details
    #   A list of ImageDetail objects that contain data about the image.
    #   @return [Array<Types::ImageDetail>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `DescribeImages`
    #   request. When the results of a `DescribeImages` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeImagesResponse AWS API Documentation
    #
    class DescribeImagesResponse < Struct.new(
      :image_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRegistriesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeRegistries` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to
    #   return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository results returned by
    #   `DescribeRegistries` in paginated output. When this parameter is
    #   used, `DescribeRegistries` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeRegistries` request with the returned `nextToken` value.
    #   This value can be between 1 and 1000. If this parameter is not used,
    #   then `DescribeRegistries` returns up to 100 results and a
    #   `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeRegistriesRequest AWS API Documentation
    #
    class DescribeRegistriesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registries
    #   An object containing the details for a public registry.
    #   @return [Array<Types::Registry>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `DescribeRepositories`
    #   request. When the results of a `DescribeRepositories` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeRegistriesResponse AWS API Documentation
    #
    class DescribeRegistriesResponse < Struct.new(
      :registries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRepositoriesRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_names: ["RepositoryName"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repositories to be described. If you do not specify a registry, the
    #   default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_names
    #   A list of repositories to describe. If this parameter is omitted,
    #   then all repositories in a registry are described.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeRepositories` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to
    #   return. This option cannot be used when you specify repositories
    #   with `repositoryNames`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository results returned by
    #   `DescribeRepositories` in paginated output. When this parameter is
    #   used, `DescribeRepositories` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeRepositories` request with the returned `nextToken` value.
    #   This value can be between 1 and 1000. If this parameter is not used,
    #   then `DescribeRepositories` returns up to 100 results and a
    #   `nextToken` value, if applicable. This option cannot be used when
    #   you specify repositories with `repositoryNames`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeRepositoriesRequest AWS API Documentation
    #
    class DescribeRepositoriesRequest < Struct.new(
      :registry_id,
      :repository_names,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repositories
    #   A list of repository objects corresponding to valid repositories.
    #   @return [Array<Types::Repository>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `DescribeRepositories`
    #   request. When the results of a `DescribeRepositories` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/DescribeRepositoriesResponse AWS API Documentation
    #
    class DescribeRepositoriesResponse < Struct.new(
      :repositories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified layer upload does not contain any layer parts.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/EmptyUploadException AWS API Documentation
    #
    class EmptyUploadException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetAuthorizationTokenRequest AWS API Documentation
    #
    class GetAuthorizationTokenRequest < Aws::EmptyStructure; end

    # @!attribute [rw] authorization_data
    #   An authorization token data object that corresponds to a public
    #   registry.
    #   @return [Types::AuthorizationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetAuthorizationTokenResponse AWS API Documentation
    #
    class GetAuthorizationTokenResponse < Struct.new(
      :authorization_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRegistryCatalogDataRequest AWS API Documentation
    #
    class GetRegistryCatalogDataRequest < Aws::EmptyStructure; end

    # @!attribute [rw] registry_catalog_data
    #   The catalog metadata for the public registry.
    #   @return [Types::RegistryCatalogData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRegistryCatalogDataResponse AWS API Documentation
    #
    class GetRegistryCatalogDataResponse < Struct.new(
      :registry_catalog_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRepositoryCatalogDataRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repositories to be described. If you do not specify a registry, the
    #   default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to retrieve the catalog metadata for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRepositoryCatalogDataRequest AWS API Documentation
    #
    class GetRepositoryCatalogDataRequest < Struct.new(
      :registry_id,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_data
    #   The catalog metadata for the repository.
    #   @return [Types::RepositoryCatalogData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRepositoryCatalogDataResponse AWS API Documentation
    #
    class GetRepositoryCatalogDataResponse < Struct.new(
      :catalog_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRepositoryPolicyRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry that contains
    #   the repository. If you do not specify a registry, the default public
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository with the policy to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRepositoryPolicyRequest AWS API Documentation
    #
    class GetRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The repository policy text associated with the repository. The
    #   policy text will be in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/GetRepositoryPolicyResponse AWS API Documentation
    #
    class GetRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon ECR image.
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry containing the
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository associated with the image.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   An object containing the image tag and image digest associated with
    #   an image.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] image_manifest
    #   The image manifest associated with the image.
    #   @return [String]
    #
    # @!attribute [rw] image_manifest_media_type
    #   The manifest media type of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/Image AWS API Documentation
    #
    class Image < Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :image_manifest,
      :image_manifest_media_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified image has already been pushed, and there were no changes
    # to the manifest or image tag after the last push.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ImageAlreadyExistsException AWS API Documentation
    #
    class ImageAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes an image returned by a DescribeImages
    # operation.
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry to which this
    #   image belongs.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to which this image belongs.
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   The `sha256` digest of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The list of tags associated with this image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_size_in_bytes
    #   The size, in bytes, of the image in the repository.
    #
    #   If the image is a manifest list, this will be the max size of all
    #   manifests in the list.
    #
    #   <note markdown="1"> Beginning with Docker version 1.9, the Docker client compresses
    #   image layers before pushing them to a V2 Docker registry. The output
    #   of the `docker images` command shows the uncompressed image size, so
    #   it may return a larger image size than the image sizes returned by
    #   DescribeImages.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] image_pushed_at
    #   The date and time, expressed in standard JavaScript date format, at
    #   which the current image was pushed to the repository.
    #   @return [Time]
    #
    # @!attribute [rw] image_manifest_media_type
    #   The media type of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] artifact_media_type
    #   The artifact media type of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ImageDetail AWS API Documentation
    #
    class ImageDetail < Struct.new(
      :registry_id,
      :repository_name,
      :image_digest,
      :image_tags,
      :image_size_in_bytes,
      :image_pushed_at,
      :image_manifest_media_type,
      :artifact_media_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified image digest does not match the digest that Amazon ECR
    # calculated for the image.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ImageDigestDoesNotMatchException AWS API Documentation
    #
    class ImageDigestDoesNotMatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon ECR image failure.
    #
    # @!attribute [rw] image_id
    #   The image ID associated with the failure.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] failure_code
    #   The code associated with the failure.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ImageFailure AWS API Documentation
    #
    class ImageFailure < Struct.new(
      :image_id,
      :failure_code,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object with identifying information for an Amazon ECR image.
    #
    # @note When making an API call, you may pass ImageIdentifier
    #   data as a hash:
    #
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       }
    #
    # @!attribute [rw] image_digest
    #   The `sha256` digest of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] image_tag
    #   The tag used for the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ImageIdentifier AWS API Documentation
    #
    class ImageIdentifier < Struct.new(
      :image_digest,
      :image_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image requested does not exist in the specified repository.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ImageNotFoundException AWS API Documentation
    #
    class ImageNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified image is tagged with a tag that already exists. The
    # repository is configured for tag immutability.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ImageTagAlreadyExistsException AWS API Documentation
    #
    class ImageTagAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the image tag details for an image.
    #
    # @!attribute [rw] image_tag
    #   The tag associated with the image.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time stamp indicating when the image tag was created.
    #   @return [Time]
    #
    # @!attribute [rw] image_detail
    #   An object that describes the details of an image.
    #   @return [Types::ReferencedImageDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ImageTagDetail AWS API Documentation
    #
    class ImageTagDetail < Struct.new(
      :image_tag,
      :created_at,
      :image_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass InitiateLayerUploadRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryIdOrAlias",
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry to which you intend
    #   to upload layers. If you do not specify a registry, the default
    #   public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to which you intend to upload layers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/InitiateLayerUploadRequest AWS API Documentation
    #
    class InitiateLayerUploadRequest < Struct.new(
      :registry_id,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] upload_id
    #   The upload ID for the layer upload. This parameter is passed to
    #   further UploadLayerPart and CompleteLayerUpload operations.
    #   @return [String]
    #
    # @!attribute [rw] part_size
    #   The size, in bytes, that Amazon ECR expects future layer part
    #   uploads to be.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/InitiateLayerUploadResponse AWS API Documentation
    #
    class InitiateLayerUploadResponse < Struct.new(
      :upload_id,
      :part_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The layer digest calculation performed by Amazon ECR upon receipt of
    # the image layer does not match the digest specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/InvalidLayerException AWS API Documentation
    #
    class InvalidLayerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The layer part size is not valid, or the first byte specified is not
    # consecutive to the last byte of a previous layer part upload.
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the layer part.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID associated with the layer part.
    #   @return [String]
    #
    # @!attribute [rw] last_valid_byte_received
    #   The position of the last byte of the layer part.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/InvalidLayerPartException AWS API Documentation
    #
    class InvalidLayerPartException < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :last_valid_byte_received,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter is invalid. Review the available parameters
    # for the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invalid parameter has been specified. Tag keys can have a maximum
    # character length of 128 characters, and tag values can have a maximum
    # length of 256 characters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/InvalidTagParameterException AWS API Documentation
    #
    class InvalidTagParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon ECR image layer.
    #
    # @!attribute [rw] layer_digest
    #   The `sha256` digest of the image layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_availability
    #   The availability status of the image layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_size
    #   The size, in bytes, of the image layer.
    #   @return [Integer]
    #
    # @!attribute [rw] media_type
    #   The media type of the layer, such as
    #   `application/vnd.docker.image.rootfs.diff.tar.gzip` or
    #   `application/vnd.oci.image.layer.v1.tar+gzip`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/Layer AWS API Documentation
    #
    class Layer < Struct.new(
      :layer_digest,
      :layer_availability,
      :layer_size,
      :media_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image layer already exists in the associated repository.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/LayerAlreadyExistsException AWS API Documentation
    #
    class LayerAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon ECR image layer failure.
    #
    # @!attribute [rw] layer_digest
    #   The layer digest associated with the failure.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code associated with the failure.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/LayerFailure AWS API Documentation
    #
    class LayerFailure < Struct.new(
      :layer_digest,
      :failure_code,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Layer parts must be at least 5 MiB in size.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/LayerPartTooSmallException AWS API Documentation
    #
    class LayerPartTooSmallException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified layers could not be found, or the specified layer is not
    # valid for this repository.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/LayersNotFoundException AWS API Documentation
    #
    class LayersNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because it would have exceeded a service
    # limit for your account. For more information, see [Amazon ECR Service
    # Quotas][1] in the Amazon Elastic Container Registry User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/service-quotas.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. Currently, the supported resource is an
    #   Amazon ECR Public repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutImageRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryIdOrAlias",
    #         repository_name: "RepositoryName", # required
    #         image_manifest: "ImageManifest", # required
    #         image_manifest_media_type: "MediaType",
    #         image_tag: "ImageTag",
    #         image_digest: "ImageDigest",
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry that contains
    #   the repository in which to put the image. If you do not specify a
    #   registry, the default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository in which to put the image.
    #   @return [String]
    #
    # @!attribute [rw] image_manifest
    #   The image manifest corresponding to the image to be uploaded.
    #   @return [String]
    #
    # @!attribute [rw] image_manifest_media_type
    #   The media type of the image manifest. If you push an image manifest
    #   that does not contain the `mediaType` field, you must specify the
    #   `imageManifestMediaType` in the request.
    #   @return [String]
    #
    # @!attribute [rw] image_tag
    #   The tag to associate with the image. This parameter is required for
    #   images that use the Docker Image Manifest V2 Schema 2 or Open
    #   Container Initiative (OCI) formats.
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   The image digest of the image manifest corresponding to the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutImageRequest AWS API Documentation
    #
    class PutImageRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_manifest,
      :image_manifest_media_type,
      :image_tag,
      :image_digest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   Details of the image uploaded.
    #   @return [Types::Image]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutImageResponse AWS API Documentation
    #
    class PutImageResponse < Struct.new(
      :image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRegistryCatalogDataRequest
    #   data as a hash:
    #
    #       {
    #         display_name: "RegistryDisplayName",
    #       }
    #
    # @!attribute [rw] display_name
    #   The display name for a public registry. The display name is shown as
    #   the repository author in the Amazon ECR Public Gallery.
    #
    #   <note markdown="1"> The registry display name is only publicly visible in the Amazon ECR
    #   Public Gallery for verified accounts.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutRegistryCatalogDataRequest AWS API Documentation
    #
    class PutRegistryCatalogDataRequest < Struct.new(
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_catalog_data
    #   The catalog data for the public registry.
    #   @return [Types::RegistryCatalogData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutRegistryCatalogDataResponse AWS API Documentation
    #
    class PutRegistryCatalogDataResponse < Struct.new(
      :registry_catalog_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRepositoryCatalogDataRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         catalog_data: { # required
    #           description: "RepositoryDescription",
    #           architectures: ["Architecture"],
    #           operating_systems: ["OperatingSystem"],
    #           logo_image_blob: "data",
    #           about_text: "AboutText",
    #           usage_text: "UsageText",
    #         },
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry the
    #   repository is in. If you do not specify a registry, the default
    #   public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to create or update the catalog data for.
    #   @return [String]
    #
    # @!attribute [rw] catalog_data
    #   An object containing the catalog data for a repository. This data is
    #   publicly visible in the Amazon ECR Public Gallery.
    #   @return [Types::RepositoryCatalogDataInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutRepositoryCatalogDataRequest AWS API Documentation
    #
    class PutRepositoryCatalogDataRequest < Struct.new(
      :registry_id,
      :repository_name,
      :catalog_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_data
    #   The catalog data for the repository.
    #   @return [Types::RepositoryCatalogData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/PutRepositoryCatalogDataResponse AWS API Documentation
    #
    class PutRepositoryCatalogDataResponse < Struct.new(
      :catalog_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the image tag details returned by a
    # DescribeImageTags action.
    #
    # @!attribute [rw] image_digest
    #   The `sha256` digest of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] image_size_in_bytes
    #   The size, in bytes, of the image in the repository.
    #
    #   If the image is a manifest list, this will be the max size of all
    #   manifests in the list.
    #
    #   <note markdown="1"> Beginning with Docker version 1.9, the Docker client compresses
    #   image layers before pushing them to a V2 Docker registry. The output
    #   of the `docker images` command shows the uncompressed image size, so
    #   it may return a larger image size than the image sizes returned by
    #   DescribeImages.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] image_pushed_at
    #   The date and time, expressed in standard JavaScript date format, at
    #   which the current image tag was pushed to the repository.
    #   @return [Time]
    #
    # @!attribute [rw] image_manifest_media_type
    #   The media type of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] artifact_media_type
    #   The artifact media type of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ReferencedImageDetail AWS API Documentation
    #
    class ReferencedImageDetail < Struct.new(
      :image_digest,
      :image_size_in_bytes,
      :image_pushed_at,
      :image_manifest_media_type,
      :artifact_media_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The manifest list is referencing an image that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ReferencedImagesNotFoundException AWS API Documentation
    #
    class ReferencedImagesNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a public registry.
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry. If you do not
    #   specify a registry, the default public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the public registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_uri
    #   The URI of a public registry. The URI contains a universal prefix
    #   and the registry alias.
    #   @return [String]
    #
    # @!attribute [rw] verified
    #   Whether the account is verified. This indicates whether the account
    #   is an AWS Marketplace vendor. If an account is verified, each public
    #   repository will received a verified account badge on the Amazon ECR
    #   Public Gallery.
    #   @return [Boolean]
    #
    # @!attribute [rw] aliases
    #   An array of objects representing the aliases for a public registry.
    #   @return [Array<Types::RegistryAlias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/Registry AWS API Documentation
    #
    class Registry < Struct.new(
      :registry_id,
      :registry_arn,
      :registry_uri,
      :verified,
      :aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the aliases for a public registry. A public
    # registry is given an alias upon creation but a custom alias can be set
    # using the Amazon ECR console. For more information, see
    # [Registries][1] in the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html
    #
    # @!attribute [rw] name
    #   The name of the registry alias.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the registry alias.
    #   @return [String]
    #
    # @!attribute [rw] primary_registry_alias
    #   Whether or not the registry alias is the primary alias for the
    #   registry. If true, the alias is the primary registry alias and is
    #   displayed in both the repository URL and the image URI used in the
    #   `docker pull` commands on the Amazon ECR Public Gallery.
    #
    #   <note markdown="1"> A registry alias that is not the primary registry alias can be used
    #   in the repository URI in a `docker pull` command.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] default_registry_alias
    #   Whether or not the registry alias is the default alias for the
    #   registry. When the first public repository is created, your public
    #   registry is assigned a default registry alias.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RegistryAlias AWS API Documentation
    #
    class RegistryAlias < Struct.new(
      :name,
      :status,
      :primary_registry_alias,
      :default_registry_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata for a public registry.
    #
    # @!attribute [rw] display_name
    #   The display name for a public registry. This appears on the Amazon
    #   ECR Public Gallery.
    #
    #   Only accounts that have the verified account badge can have a
    #   registry display name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RegistryCatalogData AWS API Documentation
    #
    class RegistryCatalogData < Struct.new(
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The registry does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RegistryNotFoundException AWS API Documentation
    #
    class RegistryNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a repository.
    #
    # @!attribute [rw] repository_arn
    #   The Amazon Resource Name (ARN) that identifies the repository. The
    #   ARN contains the `arn:aws:ecr` namespace, followed by the region of
    #   the repository, AWS account ID of the repository owner, repository
    #   namespace, and repository name. For example,
    #   `arn:aws:ecr:region:012345678910:repository/test`.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the public registry that contains
    #   the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_uri
    #   The URI for the repository. You can use this URI for container image
    #   `push` and `pull` operations.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time, in JavaScript date format, when the repository
    #   was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/Repository AWS API Documentation
    #
    class Repository < Struct.new(
      :repository_arn,
      :registry_id,
      :repository_name,
      :repository_uri,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified repository already exists in the specified registry.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RepositoryAlreadyExistsException AWS API Documentation
    #
    class RepositoryAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The catalog data for a repository. This data is publicly visible in
    # the Amazon ECR Public Gallery.
    #
    # @!attribute [rw] description
    #   The short description of the repository.
    #   @return [String]
    #
    # @!attribute [rw] architectures
    #   The architecture tags that are associated with the repository.
    #
    #   <note markdown="1"> Only supported operating system tags appear publicly in the Amazon
    #   ECR Public Gallery. For more information, see
    #   RepositoryCatalogDataInput.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] operating_systems
    #   The operating system tags that are associated with the repository.
    #
    #   <note markdown="1"> Only supported operating system tags appear publicly in the Amazon
    #   ECR Public Gallery. For more information, see
    #   RepositoryCatalogDataInput.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] logo_url
    #   The URL containing the logo associated with the repository.
    #   @return [String]
    #
    # @!attribute [rw] about_text
    #   The longform description of the contents of the repository. This
    #   text appears in the repository details on the Amazon ECR Public
    #   Gallery.
    #   @return [String]
    #
    # @!attribute [rw] usage_text
    #   The longform usage details of the contents of the repository. The
    #   usage text provides context for users of the repository.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_certified
    #   Whether or not the repository is certified by AWS Marketplace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RepositoryCatalogData AWS API Documentation
    #
    class RepositoryCatalogData < Struct.new(
      :description,
      :architectures,
      :operating_systems,
      :logo_url,
      :about_text,
      :usage_text,
      :marketplace_certified)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the catalog data for a repository. This data is
    # publicly visible in the Amazon ECR Public Gallery.
    #
    # @note When making an API call, you may pass RepositoryCatalogDataInput
    #   data as a hash:
    #
    #       {
    #         description: "RepositoryDescription",
    #         architectures: ["Architecture"],
    #         operating_systems: ["OperatingSystem"],
    #         logo_image_blob: "data",
    #         about_text: "AboutText",
    #         usage_text: "UsageText",
    #       }
    #
    # @!attribute [rw] description
    #   A short description of the contents of the repository. This text
    #   appears in both the image details and also when searching for
    #   repositories on the Amazon ECR Public Gallery.
    #   @return [String]
    #
    # @!attribute [rw] architectures
    #   The system architecture that the images in the repository are
    #   compatible with. On the Amazon ECR Public Gallery, the following
    #   supported architectures will appear as badges on the repository and
    #   are used as search filters.
    #
    #   * `Linux`
    #
    #   * `Windows`
    #
    #   <note markdown="1"> If an unsupported tag is added to your repository catalog data, it
    #   will be associated with the repository and can be retrieved using
    #   the API but will not be discoverable in the Amazon ECR Public
    #   Gallery.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] operating_systems
    #   The operating systems that the images in the repository are
    #   compatible with. On the Amazon ECR Public Gallery, the following
    #   supported operating systems will appear as badges on the repository
    #   and are used as search filters.
    #
    #   * `ARM`
    #
    #   * `ARM 64`
    #
    #   * `x86`
    #
    #   * `x86-64`
    #
    #   <note markdown="1"> If an unsupported tag is added to your repository catalog data, it
    #   will be associated with the repository and can be retrieved using
    #   the API but will not be discoverable in the Amazon ECR Public
    #   Gallery.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] logo_image_blob
    #   The base64-encoded repository logo payload.
    #
    #   <note markdown="1"> The repository logo is only publicly visible in the Amazon ECR
    #   Public Gallery for verified accounts.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] about_text
    #   A detailed description of the contents of the repository. It is
    #   publicly visible in the Amazon ECR Public Gallery. The text must be
    #   in markdown format.
    #   @return [String]
    #
    # @!attribute [rw] usage_text
    #   Detailed information on how to use the contents of the repository.
    #   It is publicly visible in the Amazon ECR Public Gallery. The usage
    #   text provides context, support information, and additional usage
    #   details for users of the repository. The text must be in markdown
    #   format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RepositoryCatalogDataInput AWS API Documentation
    #
    class RepositoryCatalogDataInput < Struct.new(
      :description,
      :architectures,
      :operating_systems,
      :logo_image_blob,
      :about_text,
      :usage_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified repository contains images. To delete a repository that
    # contains images, you must force the deletion with the `force`
    # parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RepositoryNotEmptyException AWS API Documentation
    #
    class RepositoryNotEmptyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified repository could not be found. Check the spelling of the
    # specified repository and ensure that you are performing operations on
    # the correct registry.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RepositoryNotFoundException AWS API Documentation
    #
    class RepositoryNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified repository and registry combination does not have an
    # associated repository policy.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/RepositoryPolicyNotFoundException AWS API Documentation
    #
    class RepositoryPolicyNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a server-side issue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetRepositoryPolicyRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryId",
    #         repository_name: "RepositoryName", # required
    #         policy_text: "RepositoryPolicyText", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry that contains the
    #   repository. If you do not specify a registry, the default public
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to receive the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON repository policy text to apply to the repository. For more
    #   information, see [Amazon ECR Repository Policies][1] in the *Amazon
    #   Elastic Container Registry User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If the policy you are attempting to set on a repository policy would
    #   prevent you from setting another policy in the future, you must
    #   force the SetRepositoryPolicy operation. This is intended to prevent
    #   accidental repository lock outs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/SetRepositoryPolicyRequest AWS API Documentation
    #
    class SetRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON repository policy text applied to the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/SetRepositoryPolicyResponse AWS API Documentation
    #
    class SetRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata that you apply to a resource to help you categorize and
    # organize them. Each tag consists of a key and an optional value, both
    # of which you define. Tag keys can have a maximum character length of
    # 128 characters, and tag values can have a maximum length of 256
    # characters.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that make up a tag. A `key` is a
    #   general label that acts like a category for more specific tag
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional part of a key-value pair that make up a tag. A `value`
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   Currently, the supported resource is an Amazon ECR Public
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is an array of key-value
    #   pairs. Tag keys can have a maximum character length of 128
    #   characters, and tag values can have a maximum length of 256
    #   characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The list of tags on the repository is over the limit. The maximum
    # number of tags that can be applied to a repository is 50.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action is not supported in this Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/UnsupportedCommandException AWS API Documentation
    #
    class UnsupportedCommandException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to delete
    #   tags. Currently, the supported resource is an Amazon ECR Public
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UploadLayerPartRequest
    #   data as a hash:
    #
    #       {
    #         registry_id: "RegistryIdOrAlias",
    #         repository_name: "RepositoryName", # required
    #         upload_id: "UploadId", # required
    #         part_first_byte: 1, # required
    #         part_last_byte: 1, # required
    #         layer_part_blob: "data", # required
    #       }
    #
    # @!attribute [rw] registry_id
    #   The AWS account ID associated with the registry to which you are
    #   uploading layer parts. If you do not specify a registry, the default
    #   public registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to which you are uploading layer parts.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID from a previous InitiateLayerUpload operation to
    #   associate with the layer part upload.
    #   @return [String]
    #
    # @!attribute [rw] part_first_byte
    #   The position of the first byte of the layer part witin the overall
    #   image layer.
    #   @return [Integer]
    #
    # @!attribute [rw] part_last_byte
    #   The position of the last byte of the layer part within the overall
    #   image layer.
    #   @return [Integer]
    #
    # @!attribute [rw] layer_part_blob
    #   The base64-encoded layer part payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/UploadLayerPartRequest AWS API Documentation
    #
    class UploadLayerPartRequest < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :part_first_byte,
      :part_last_byte,
      :layer_part_blob)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] last_byte_received
    #   The integer value of the last byte received in the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/UploadLayerPartResponse AWS API Documentation
    #
    class UploadLayerPartResponse < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :last_byte_received)
      SENSITIVE = []
      include Aws::Structure
    end

    # The upload could not be found, or the specified upload ID is not valid
    # for this repository.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-public-2020-10-30/UploadNotFoundException AWS API Documentation
    #
    class UploadNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

# frozen_string_literal: true

# This is generated code!

module Aws::ECRPUBLIC
  # This module contains the types returned by client operations.
  module Types

    # <p>An authorization token data object that corresponds to a public registry.</p>
    # @!attribute authorization_token
    #   <p>A base64-encoded string that contains authorization data for a public Amazon ECR registry.
    #            When the string is decoded, it's presented in the format <code>user:password</code> for
    #            public registry authentication using <code>docker login</code>.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The Unix time in seconds and milliseconds when the authorization token expires.
    #            Authorization tokens are valid for 12 hours.</p>
    #   @return [Time]
    class AuthorizationData < Struct.new(
      :authorization_token,
      :expires_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, associated with the public registry that
    #            contains the image layers to check. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that's associated with the image layers to check.</p>
    #   @return [String]
    # @!attribute layer_digests
    #   <p>The digests of the image layers to check.</p>
    #   @return [Array<String>]
    class BatchCheckLayerAvailabilityRequest < Struct.new(
      :registry_id,
      :repository_name,
      :layer_digests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute layers
    #   <p>A list of image layer objects that correspond to the image layer references in the
    #            request.</p>
    #   @return [Array<Types::Layer>]
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #   @return [Array<Types::LayerFailure>]
    class BatchCheckLayerAvailabilityResponse < Struct.new(
      :layers,
      :failures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, that's associated with the registry that
    #            contains the image to delete. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository in a public registry that contains the image to delete.</p>
    #   @return [String]
    # @!attribute image_ids
    #   <p>A list of image ID references that correspond to images to delete. The format of the
    #               <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #               <code>imageDigest=digest</code>.</p>
    #   @return [Array<Types::ImageIdentifier>]
    class BatchDeleteImageRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute image_ids
    #   <p>The image IDs of the deleted images.</p>
    #   @return [Array<Types::ImageIdentifier>]
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #   @return [Array<Types::ImageFailure>]
    class BatchDeleteImageResponse < Struct.new(
      :image_ids,
      :failures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, associated with the registry where layers are
    #            uploaded. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository in a public registry to associate with the image
    #            layer.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #            associate with the image layer.</p>
    #   @return [String]
    # @!attribute layer_digests
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    #   @return [Array<String>]
    class CompleteLayerUploadRequest < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The public registry ID that's associated with the request.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name that's associated with the request.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID that's associated with the layer.</p>
    #   @return [String]
    # @!attribute layer_digest
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    #   @return [String]
    class CompleteLayerUploadResponse < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digest,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name to use for the repository. This appears publicly in the Amazon ECR Public Gallery.
    #            The repository name can be specified on its own (for example <code>nginx-web-app</code>) or
    #            prepended with a namespace to group the repository into a category (for example
    #               <code>project-a/nginx-web-app</code>).</p>
    #   @return [String]
    # @!attribute catalog_data
    #   <p>The details about the repository that are publicly visible in the
    #            Amazon ECR Public Gallery.</p>
    #   @return [Types::RepositoryCatalogDataInput]
    # @!attribute tags
    #   <p>The metadata that you apply to each repository to help categorize and organize your
    #            repositories. Each tag consists of a key and an optional value. You define both of them.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #   @return [Array<Types::Tag>]
    class CreateRepositoryRequest < Struct.new(
      :repository_name,
      :catalog_data,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>The repository that was created.</p>
    #   @return [Types::Repository]
    # @!attribute catalog_data
    #   <p>The catalog data for a repository. This data is publicly visible in the
    #            Amazon ECR Public Gallery.</p>
    #   @return [Types::RepositoryCatalogData]
    class CreateRepositoryResponse < Struct.new(
      :repository,
      :catalog_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository policy to delete. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that's associated with the repository policy to
    #            delete.</p>
    #   @return [String]
    class DeleteRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID that's associated with the request.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name that's associated with the request.</p>
    #   @return [String]
    # @!attribute policy_text
    #   <p>The JSON repository policy that was deleted from the repository.</p>
    #   @return [String]
    class DeleteRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository to delete. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository to delete.</p>
    #   @return [String]
    # @!attribute force
    #   <p> The force option can be used to delete a repository that contains images. If the force
    #            option is not used, the repository must be empty prior to deletion.</p>
    #   @return [Boolean]
    class DeleteRepositoryRequest < Struct.new(
      :registry_id,
      :repository_name,
      :force,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>The repository that was deleted.</p>
    #   @return [Types::Repository]
    class DeleteRepositoryResponse < Struct.new(
      :repository,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository where images are described. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that contains the image tag details to describe.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #               <code>DescribeImageTags</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. If there are no more
    #            results to return, this value is <code>null</code>. If you specify images with
    #               <code>imageIds</code>, you can't use this option.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of repository results that's returned by
    #               <code>DescribeImageTags</code> in paginated output. When this parameter is used,
    #               <code>DescribeImageTags</code> only returns <code>maxResults</code> results in a single
    #            page along with a <code>nextToken</code> response element. You can see the remaining
    #            results of the initial request by sending another <code>DescribeImageTags</code> request
    #            with the returned <code>nextToken</code> value. This value can be between 1
    #            and 1000. If this parameter isn't used, then <code>DescribeImageTags</code>
    #            returns up to 100 results and a <code>nextToken</code> value, if
    #            applicable. If you specify images with <code>imageIds</code>, you can't use this
    #            option.</p>
    #   @return [Integer]
    class DescribeImageTagsRequest < Struct.new(
      :registry_id,
      :repository_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute image_tag_details
    #   <p>The image tag details for the images in the requested repository.</p>
    #   @return [Array<Types::ImageTagDetail>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>DescribeImageTags</code>
    #            request. When the results of a <code>DescribeImageTags</code> request exceed
    #               <code>maxResults</code>, you can use this value to retrieve the next page of results. If
    #            there are no more results to return, this value is <code>null</code>.</p>
    #   @return [String]
    class DescribeImageTagsResponse < Struct.new(
      :image_tag_details,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository where images are described. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository that contains the images to describe.</p>
    #   @return [String]
    # @!attribute image_ids
    #   <p>The list of image IDs for the requested repository.</p>
    #   @return [Array<Types::ImageIdentifier>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #               <code>DescribeImages</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. If there are no more
    #            results to return, this value is <code>null</code>. If you specify images with
    #               <code>imageIds</code>, you can't use this option.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of repository results that's returned by <code>DescribeImages</code>
    #            in paginated output. When this parameter is used, <code>DescribeImages</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. You can see the remaining results of the initial request by sending
    #            another <code>DescribeImages</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 1000. If this parameter isn't
    #            used, then <code>DescribeImages</code> returns up to 100 results and a
    #               <code>nextToken</code> value, if applicable. If you specify images with
    #               <code>imageIds</code>, you can't use this option.</p>
    #   @return [Integer]
    class DescribeImagesRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute image_details
    #   <p>A list of <a>ImageDetail</a> objects that contain data about the
    #            image.</p>
    #   @return [Array<Types::ImageDetail>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code>
    #            request. When the results of a <code>DescribeImages</code> request exceed
    #               <code>maxResults</code>, you can use this value to retrieve the next page of results. If
    #            there are no more results to return, this value is <code>null</code>.</p>
    #   @return [String]
    class DescribeImagesResponse < Struct.new(
      :image_details,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #               <code>DescribeRegistries</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. If there are no more
    #            results to return, this value is <code>null</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of repository results that's returned by
    #               <code>DescribeRegistries</code> in paginated output. When this parameter is used,
    #               <code>DescribeRegistries</code> only returns <code>maxResults</code> results in a single
    #            page along with a <code>nextToken</code> response element. The remaining results of the
    #            initial request can be seen by sending another <code>DescribeRegistries</code> request with
    #            the returned <code>nextToken</code> value. This value can be between 1 and
    #            1000. If this parameter isn't used, then <code>DescribeRegistries</code>
    #            returns up to 100 results and a <code>nextToken</code> value, if
    #            applicable.</p>
    #   @return [Integer]
    class DescribeRegistriesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registries
    #   <p>An object that contains the details for a public registry.</p>
    #   @return [Array<Types::Registry>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #               <code>DescribeRepositories</code> request. If the results of a
    #               <code>DescribeRepositories</code> request exceed <code>maxResults</code>, you can use
    #            this value to retrieve the next page of results. If there are no more results, this value
    #            is <code>null</code>.</p>
    #   @return [String]
    class DescribeRegistriesResponse < Struct.new(
      :registries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the registry that contains the repositories
    #            to be described. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_names
    #   <p>A list of repositories to describe. If this parameter is omitted, then all repositories
    #            in a registry are described.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated
    #               <code>DescribeRepositories</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. If there are no more
    #            results to return, this value is <code>null</code>. If you specify repositories with
    #               <code>repositoryNames</code>, you can't use this option.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of repository results that's returned by
    #               <code>DescribeRepositories</code> in paginated output. When this parameter is used,
    #               <code>DescribeRepositories</code> only returns <code>maxResults</code> results in a
    #            single page along with a <code>nextToken</code> response element. You can see the remaining
    #            results of the initial request by sending another <code>DescribeRepositories</code> request
    #            with the returned <code>nextToken</code> value. This value can be between 1
    #            and 1000. If this parameter isn't used, then <code>DescribeRepositories</code>
    #            returns up to 100 results and a <code>nextToken</code> value, if
    #            applicable. If you specify repositories with <code>repositoryNames</code>, you can't use
    #            this option.</p>
    #   @return [Integer]
    class DescribeRepositoriesRequest < Struct.new(
      :registry_id,
      :repository_names,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repositories
    #   <p>A list of repository objects corresponding to valid repositories.</p>
    #   @return [Array<Types::Repository>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #               <code>DescribeRepositories</code> request. When the results of a
    #               <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value can
    #            be used to retrieve the next page of results. If there are no more results to return, this
    #            value is <code>null</code>.</p>
    #   @return [String]
    class DescribeRepositoriesResponse < Struct.new(
      :repositories,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified layer upload doesn't contain any layer parts.</p>
    # @!attribute message
    #   @return [String]
    class EmptyUploadException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetAuthorizationTokenRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute authorization_data
    #   <p>An authorization token data object that corresponds to a public registry.</p>
    #   @return [Types::AuthorizationData]
    class GetAuthorizationTokenResponse < Struct.new(
      :authorization_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetRegistryCatalogDataRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_catalog_data
    #   <p>The catalog metadata for the public registry.</p>
    #   @return [Types::RegistryCatalogData]
    class GetRegistryCatalogDataResponse < Struct.new(
      :registry_catalog_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the registry that contains the repositories
    #            to be described. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository to retrieve the catalog metadata for.</p>
    #   @return [String]
    class GetRepositoryCatalogDataRequest < Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_data
    #   <p>The catalog metadata for the repository.</p>
    #   @return [Types::RepositoryCatalogData]
    class GetRepositoryCatalogDataResponse < Struct.new(
      :catalog_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository with the policy to retrieve.</p>
    #   @return [String]
    class GetRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID that's associated with the request.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name that's associated with the request.</p>
    #   @return [String]
    # @!attribute policy_text
    #   <p>The repository policy text that's associated with the repository. The policy text will
    #            be in JSON format.</p>
    #   @return [String]
    class GetRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an Amazon ECR image.</p>
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the registry containing the image.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that's associated with the image.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>An object that contains the image tag and image digest associated with an image.</p>
    #   @return [Types::ImageIdentifier]
    # @!attribute image_manifest
    #   <p>The image manifest that's associated with the image.</p>
    #   @return [String]
    # @!attribute image_manifest_media_type
    #   <p>The manifest media type of the image.</p>
    #   @return [String]
    class Image < Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :image_manifest,
      :image_manifest_media_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified image has already been pushed, and there were no changes to the manifest
    #          or image tag after the last push.</p>
    # @!attribute message
    #   @return [String]
    class ImageAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that describes an image that's returned by a <a>DescribeImages</a>
    #          operation.</p>
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry where this image
    #            belongs.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository where this image belongs.</p>
    #   @return [String]
    # @!attribute image_digest
    #   <p>The <code>sha256</code> digest of the image manifest.</p>
    #   @return [String]
    # @!attribute image_tags
    #   <p>The list of tags that's associated with this image.</p>
    #   @return [Array<String>]
    # @!attribute image_size_in_bytes
    #   <p>The size, in bytes, of the image in the repository.</p>
    #            <p>If the image is a manifest list, this is the max size of all manifests in the
    #            list.</p>
    #            <note>
    #               <p>Beginning with Docker version 1.9, the Docker client compresses image layers before
    #               pushing them to a V2 Docker registry. The output of the <code>docker images</code>
    #               command shows the uncompressed image size, so it might return a larger image size than
    #               the image sizes that are returned by <a>DescribeImages</a>.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute image_pushed_at
    #   <p>The date and time, expressed in standard JavaScript date format, that the current image
    #            was pushed to the repository at. </p>
    #   @return [Time]
    # @!attribute image_manifest_media_type
    #   <p>The media type of the image manifest.</p>
    #   @return [String]
    # @!attribute artifact_media_type
    #   <p>The artifact media type of the image.</p>
    #   @return [String]
    class ImageDetail < Struct.new(
      :registry_id,
      :repository_name,
      :image_digest,
      :image_tags,
      :image_size_in_bytes,
      :image_pushed_at,
      :image_manifest_media_type,
      :artifact_media_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified image digest doesn't match the digest that Amazon ECR calculated for the
    #          image.</p>
    # @!attribute message
    #   @return [String]
    class ImageDigestDoesNotMatchException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an Amazon ECR image failure.</p>
    # @!attribute image_id
    #   <p>The image ID that's associated with the failure.</p>
    #   @return [Types::ImageIdentifier]
    # @!attribute failure_code
    #   <p>The code that's associated with the failure.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for the failure.</p>
    #   @return [String]
    class ImageFailure < Struct.new(
      :image_id,
      :failure_code,
      :failure_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ImageFailureCode
      InvalidImageDigest = 'InvalidImageDigest'
      InvalidImageTag = 'InvalidImageTag'
      ImageTagDoesNotMatchDigest = 'ImageTagDoesNotMatchDigest'
      ImageNotFound = 'ImageNotFound'
      MissingDigestAndTag = 'MissingDigestAndTag'
      ImageReferencedByManifestList = 'ImageReferencedByManifestList'
      KmsError = 'KmsError'
    end

    # <p>An object with identifying information for an Amazon ECR image.</p>
    # @!attribute image_digest
    #   <p>The <code>sha256</code> digest of the image manifest.</p>
    #   @return [String]
    # @!attribute image_tag
    #   <p>The tag that's used for the image.</p>
    #   @return [String]
    class ImageIdentifier < Struct.new(
      :image_digest,
      :image_tag,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The image requested doesn't exist in the specified repository.</p>
    # @!attribute message
    #   @return [String]
    class ImageNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified image is tagged with a tag that already exists. The repository is
    #          configured for tag immutability.</p>
    # @!attribute message
    #   @return [String]
    class ImageTagAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the image tag details for an image.</p>
    # @!attribute image_tag
    #   <p>The tag that's associated with the image.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time stamp that indicates when the image tag was created.</p>
    #   @return [Time]
    # @!attribute image_detail
    #   <p>An object that describes the details of an image.</p>
    #   @return [Types::ReferencedImageDetail]
    class ImageTagDetail < Struct.new(
      :image_tag,
      :created_at,
      :image_detail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, that's associated with the registry to which
    #            you intend to upload layers. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that you want to upload layers to.</p>
    #   @return [String]
    class InitiateLayerUploadRequest < Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute upload_id
    #   <p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a> operations.</p>
    #   @return [String]
    # @!attribute part_size
    #   <p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>
    #   @return [Integer]
    class InitiateLayerUploadResponse < Struct.new(
      :upload_id,
      :part_size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The layer digest calculation performed by Amazon ECR when the image layer doesn't match the
    #          digest specified.</p>
    # @!attribute message
    #   @return [String]
    class InvalidLayerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The layer part size isn't valid, or the first byte specified isn't consecutive to the
    #          last byte of a previous layer part upload.</p>
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the layer part.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID that's associated with the layer part.</p>
    #   @return [String]
    # @!attribute last_valid_byte_received
    #   <p>The position of the last byte of the layer part.</p>
    #   @return [Integer]
    # @!attribute message
    #   @return [String]
    class InvalidLayerPartException < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :last_valid_byte_received,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    #          request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An invalid parameter has been specified. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTagParameterException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an Amazon ECR image layer.</p>
    # @!attribute layer_digest
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    #   @return [String]
    # @!attribute layer_availability
    #   <p>The availability status of the image layer.</p>
    #   @return [String]
    # @!attribute layer_size
    #   <p>The size, in bytes, of the image layer.</p>
    #   @return [Integer]
    # @!attribute media_type
    #   <p>The media type of the layer, such as
    #               <code>application/vnd.docker.image.rootfs.diff.tar.gzip</code> or
    #               <code>application/vnd.oci.image.layer.v1.tar+gzip</code>.</p>
    #   @return [String]
    class Layer < Struct.new(
      :layer_digest,
      :layer_availability,
      :layer_size,
      :media_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The image layer already exists in the associated repository.</p>
    # @!attribute message
    #   @return [String]
    class LayerAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LayerAvailability
      AVAILABLE = 'AVAILABLE'
      UNAVAILABLE = 'UNAVAILABLE'
    end

    # <p>An object that represents an Amazon ECR image layer failure.</p>
    # @!attribute layer_digest
    #   <p>The layer digest that's associated with the failure.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>The failure code that's associated with the failure.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for the failure.</p>
    #   @return [String]
    class LayerFailure < Struct.new(
      :layer_digest,
      :failure_code,
      :failure_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LayerFailureCode
      InvalidLayerDigest = 'InvalidLayerDigest'
      MissingLayerDigest = 'MissingLayerDigest'
    end

    # <p>Layer parts must be at least 5 MiB in size.</p>
    # @!attribute message
    #   @return [String]
    class LayerPartTooSmallException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified layers can't be found, or the specified layer isn't valid for this
    #          repository.</p>
    # @!attribute message
    #   @return [String]
    class LayersNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The operation didn't succeed because it would have exceeded a service limit for your
    #          account. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/service-quotas.html">Amazon ECR Service Quotas</a> in the
    #          Amazon Elastic Container Registry User Guide.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the
    #            supported resource is an Amazon ECR Public repository.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, that's associated with the public registry that
    #            contains the repository where the image is put. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository where the image is put.</p>
    #   @return [String]
    # @!attribute image_manifest
    #   <p>The image manifest that corresponds to the image to be uploaded.</p>
    #   @return [String]
    # @!attribute image_manifest_media_type
    #   <p>The media type of the image manifest. If you push an image manifest that doesn't contain
    #            the <code>mediaType</code> field, you must specify the <code>imageManifestMediaType</code>
    #            in the request.</p>
    #   @return [String]
    # @!attribute image_tag
    #   <p>The tag to associate with the image. This parameter is required for images that use the
    #            Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>
    #   @return [String]
    # @!attribute image_digest
    #   <p>The image digest of the image manifest that corresponds to the image.</p>
    #   @return [String]
    class PutImageRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_manifest,
      :image_manifest_media_type,
      :image_tag,
      :image_digest,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute image
    #   <p>Details of the image uploaded.</p>
    #   @return [Types::Image]
    class PutImageResponse < Struct.new(
      :image,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>The display name for a public registry. The display name is shown as the repository
    #            author in the Amazon ECR Public Gallery.</p>
    #            <note>
    #               <p>The registry display name is only publicly visible in the Amazon ECR Public Gallery for
    #               verified accounts.</p>
    #            </note>
    #   @return [String]
    class PutRegistryCatalogDataRequest < Struct.new(
      :display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_catalog_data
    #   <p>The catalog data for the public registry.</p>
    #   @return [Types::RegistryCatalogData]
    class PutRegistryCatalogDataResponse < Struct.new(
      :registry_catalog_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry the repository is in.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository to create or update the catalog data for.</p>
    #   @return [String]
    # @!attribute catalog_data
    #   <p>An object containing the catalog data for a repository. This data is publicly visible in
    #            the Amazon ECR Public Gallery.</p>
    #   @return [Types::RepositoryCatalogDataInput]
    class PutRepositoryCatalogDataRequest < Struct.new(
      :registry_id,
      :repository_name,
      :catalog_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_data
    #   <p>The catalog data for the repository.</p>
    #   @return [Types::RepositoryCatalogData]
    class PutRepositoryCatalogDataResponse < Struct.new(
      :catalog_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that describes the image tag details that are returned by a <a>DescribeImageTags</a> action.</p>
    # @!attribute image_digest
    #   <p>The <code>sha256</code> digest of the image manifest.</p>
    #   @return [String]
    # @!attribute image_size_in_bytes
    #   <p>The size, in bytes, of the image in the repository.</p>
    #            <p>If the image is a manifest list, this is the max size of all manifests in the
    #            list.</p>
    #            <note>
    #               <p>Beginning with Docker version 1.9, the Docker client compresses image layers before
    #               pushing them to a V2 Docker registry. The output of the <code>docker images</code>
    #               command shows the uncompressed image size, so it might return a larger image size than
    #               the image sizes that are returned by <a>DescribeImages</a>.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute image_pushed_at
    #   <p>The date and time, expressed in standard JavaScript date format, which the current image
    #            tag was pushed to the repository at.</p>
    #   @return [Time]
    # @!attribute image_manifest_media_type
    #   <p>The media type of the image manifest.</p>
    #   @return [String]
    # @!attribute artifact_media_type
    #   <p>The artifact media type of the image.</p>
    #   @return [String]
    class ReferencedImageDetail < Struct.new(
      :image_digest,
      :image_size_in_bytes,
      :image_pushed_at,
      :image_manifest_media_type,
      :artifact_media_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The manifest list is referencing an image that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ReferencedImagesNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a public registry.</p>
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the registry.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the public registry.</p>
    #   @return [String]
    # @!attribute registry_uri
    #   <p>The URI of a public registry. The URI contains a universal prefix and the registry
    #            alias.</p>
    #   @return [String]
    # @!attribute verified
    #   <p>Indicates whether the account is a verified Amazon Web Services Marketplace vendor. If an account is verified,
    #            each public repository receives a verified account badge on the
    #            Amazon ECR Public Gallery.</p>
    #   @return [Boolean]
    # @!attribute aliases
    #   <p>An array of objects that represents the aliases for a public registry.</p>
    #   @return [Array<Types::RegistryAlias>]
    class Registry < Struct.new(
      :registry_id,
      :registry_arn,
      :registry_uri,
      :verified,
      :aliases,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the aliases for a public registry. A public registry is given an
    #          alias when it's created. However, a custom alias can be set using the Amazon ECR console. For
    #          more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html">Registries</a> in the
    #             <i>Amazon Elastic Container Registry User Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the registry alias.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the registry alias.</p>
    #   @return [String]
    # @!attribute primary_registry_alias
    #   <p>Indicates whether the registry alias is the primary alias for the registry. If true, the
    #            alias is the primary registry alias and is displayed in both the repository URL and the
    #            image URI used in the <code>docker pull</code> commands on the Amazon ECR Public Gallery.</p>
    #            <note>
    #               <p>A registry alias that isn't the primary registry alias can be used in the repository
    #               URI in a <code>docker pull</code> command.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute default_registry_alias
    #   <p>Indicates whether the registry alias is the default alias for the registry. When the
    #            first public repository is created, your public registry is assigned a default registry
    #            alias.</p>
    #   @return [Boolean]
    class RegistryAlias < Struct.new(
      :name,
      :status,
      :primary_registry_alias,
      :default_registry_alias,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:primary_registry_alias] = false unless options.key?(:primary_registry_alias)
        options[:default_registry_alias] = false unless options.key?(:default_registry_alias)
        super
      end
    end

    module RegistryAliasStatus
      ACTIVE = 'ACTIVE'
      PENDING = 'PENDING'
      REJECTED = 'REJECTED'
    end

    # <p>The metadata for a public registry.</p>
    # @!attribute display_name
    #   <p>The display name for a public registry. This appears on the Amazon ECR Public Gallery.</p>
    #            <important>
    #               <p>Only accounts that have the verified account badge can have a registry display
    #               name.</p>
    #            </important>
    #   @return [String]
    class RegistryCatalogData < Struct.new(
      :display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The registry doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class RegistryNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing a repository.</p>
    # @!attribute repository_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the repository, Amazon Web Services account ID of the repository owner, repository namespace, and repository name. For example, <code>arn:aws:ecr:region:012345678910:repository/test</code>.</p>
    #   @return [String]
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the public registry that contains the
    #            repository.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #   @return [String]
    # @!attribute repository_uri
    #   <p>The URI for the repository. You can use this URI for container image <code>push</code>
    #            and <code>pull</code> operations.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time, in JavaScript date format, when the repository was created.</p>
    #   @return [Time]
    class Repository < Struct.new(
      :repository_arn,
      :registry_id,
      :repository_name,
      :repository_uri,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified repository already exists in the specified registry.</p>
    # @!attribute message
    #   @return [String]
    class RepositoryAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The catalog data for a repository. This data is publicly visible in the
    #          Amazon ECR Public Gallery.</p>
    # @!attribute description
    #   <p>The short description of the repository.</p>
    #   @return [String]
    # @!attribute architectures
    #   <p>The architecture tags that are associated with the repository.</p>
    #            <note>
    #               <p>Only supported operating system tags appear publicly in the Amazon ECR Public Gallery. For
    #               more information, see <a>RepositoryCatalogDataInput</a>.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute operating_systems
    #   <p>The operating system tags that are associated with the repository.</p>
    #            <note>
    #               <p>Only supported operating system tags appear publicly in the Amazon ECR Public Gallery. For
    #               more information, see <a>RepositoryCatalogDataInput</a>.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute logo_url
    #   <p>The URL that contains the logo that's associated with the repository.</p>
    #   @return [String]
    # @!attribute about_text
    #   <p>The longform description of the contents of the repository. This text appears in the
    #            repository details on the Amazon ECR Public Gallery.</p>
    #   @return [String]
    # @!attribute usage_text
    #   <p>The longform usage details of the contents of the repository. The usage text provides
    #            context for users of the repository.</p>
    #   @return [String]
    # @!attribute marketplace_certified
    #   <p>Indicates whether the repository is certified by Amazon Web Services Marketplace.</p>
    #   @return [Boolean]
    class RepositoryCatalogData < Struct.new(
      :description,
      :architectures,
      :operating_systems,
      :logo_url,
      :about_text,
      :usage_text,
      :marketplace_certified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains the catalog data for a repository. This data is publicly visible
    #          in the Amazon ECR Public Gallery.</p>
    # @!attribute description
    #   <p>A short description of the contents of the repository. This text appears in both the
    #            image details and also when searching for repositories on the Amazon ECR Public Gallery.</p>
    #   @return [String]
    # @!attribute architectures
    #   <p>The system architecture that the images in the repository are compatible with. On the
    #            Amazon ECR Public Gallery, the following supported architectures appear as badges on the
    #            repository and are used as search filters.</p>
    #            <note>
    #               <p>If an unsupported tag is added to your repository catalog data, it's associated with
    #               the repository and can be retrieved using the API but isn't discoverable in the
    #               Amazon ECR Public Gallery.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ARM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARM 64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x86</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x86-64</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute operating_systems
    #   <p>The operating systems that the images in the repository are compatible with. On the
    #            Amazon ECR Public Gallery, the following supported operating systems appear as badges on the
    #            repository and are used as search filters.</p>
    #            <note>
    #               <p>If an unsupported tag is added to your repository catalog data, it's associated with
    #               the repository and can be retrieved using the API but isn't discoverable in the
    #               Amazon ECR Public Gallery.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Linux</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Windows</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute logo_image_blob
    #   <p>The base64-encoded repository logo payload.</p>
    #            <note>
    #               <p>The repository logo is only publicly visible in the Amazon ECR Public Gallery for verified
    #               accounts.</p>
    #            </note>
    #   @return [String]
    # @!attribute about_text
    #   <p>A detailed description of the contents of the repository. It's publicly visible in the
    #            Amazon ECR Public Gallery. The text must be in markdown format.</p>
    #   @return [String]
    # @!attribute usage_text
    #   <p>Detailed information about how to use the contents of the repository. It's publicly
    #            visible in the Amazon ECR Public Gallery. The usage text provides context, support information,
    #            and additional usage details for users of the repository. The text must be in markdown
    #            format.</p>
    #   @return [String]
    class RepositoryCatalogDataInput < Struct.new(
      :description,
      :architectures,
      :operating_systems,
      :logo_image_blob,
      :about_text,
      :usage_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The repository catalog data doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class RepositoryCatalogDataNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified repository contains images. To delete a repository that contains images,
    #          you must force the deletion with the <code>force</code> parameter.</p>
    # @!attribute message
    #   @return [String]
    class RepositoryNotEmptyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified repository can't be found. Check the spelling of the specified repository
    #          and ensure that you're performing operations on the correct registry.</p>
    # @!attribute message
    #   @return [String]
    class RepositoryNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified repository and registry combination doesn't have an associated repository
    #          policy.</p>
    # @!attribute message
    #   @return [String]
    class RepositoryPolicyNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>These errors are usually caused by a server-side issue.</p>
    # @!attribute message
    #   @return [String]
    class ServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID that's associated with the registry that contains the repository.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository to receive the policy.</p>
    #   @return [String]
    # @!attribute policy_text
    #   <p>The JSON repository policy text to apply to the repository. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html">Amazon ECR Repository
    #               Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #   @return [String]
    # @!attribute force
    #   <p>If the policy that you want to set on a repository policy would prevent you from setting
    #            another policy in the future, you must force the <a>SetRepositoryPolicy</a>
    #            operation. This prevents accidental repository lockouts.</p>
    #   @return [Boolean]
    class SetRepositoryPolicyRequest < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      :force,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID that's associated with the request.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name that's associated with the request.</p>
    #   @return [String]
    # @!attribute policy_text
    #   <p>The JSON repository policy text that's applied to the repository.</p>
    #   @return [String]
    class SetRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The metadata that you apply to a resource to help you categorize and organize them. Each
    #          tag consists of a key and an optional value. You define both. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    # @!attribute key
    #   <p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label
    #            that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional part of a key-value pair that make up a tag. A <code>value</code> acts as a
    #            descriptor within a tag category (key).</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to. Currently, the supported
    #            resource is an Amazon ECR Public repository.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The list of tags on the repository is over the limit. The maximum number of tags that
    #          can be applied to a repository is 50.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The action isn't supported in this Region.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedCommandException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from. Currently, the supported resource is
    #            an Amazon ECR Public repository.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID, or registry alias, that's associated with the registry that you're
    #            uploading layer parts to. If you do not specify a registry, the default public registry is assumed.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that you're uploading layer parts to.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #            associate with the layer part upload.</p>
    #   @return [String]
    # @!attribute part_first_byte
    #   <p>The position of the first byte of the layer part witin the overall image layer.</p>
    #   @return [Integer]
    # @!attribute part_last_byte
    #   <p>The position of the last byte of the layer part within the overall image layer.</p>
    #   @return [Integer]
    # @!attribute layer_part_blob
    #   <p>The base64-encoded layer part payload.</p>
    #   @return [String]
    class UploadLayerPartRequest < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :part_first_byte,
      :part_last_byte,
      :layer_part_blob,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID that's associated with the request.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name that's associated with the request.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>The upload ID that's associated with the request.</p>
    #   @return [String]
    # @!attribute last_byte_received
    #   <p>The integer value of the last byte that's received in the request.</p>
    #   @return [Integer]
    class UploadLayerPartResponse < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :last_byte_received,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The upload can't be found, or the specified upload ID isn't valid for this
    #          repository.</p>
    # @!attribute message
    #   @return [String]
    class UploadNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end

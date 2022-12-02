# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECR
  module Types

    # This data type is used in the ImageScanFinding data type.
    #
    # @!attribute [rw] key
    #   The attribute key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to the attribute key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing authorization data for an Amazon ECR registry.
    #
    # @!attribute [rw] authorization_token
    #   A base64-encoded string that contains authorization data for the
    #   specified Amazon ECR registry. When the string is decoded, it is
    #   presented in the format `user:password` for private registry
    #   authentication using `docker login`.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The Unix time in seconds and milliseconds when the authorization
    #   token expires. Authorization tokens are valid for 12 hours.
    #   @return [Time]
    #
    # @!attribute [rw] proxy_endpoint
    #   The registry URL to use for this authorization token in a `docker
    #   login` command. The Amazon ECR registry URL format is
    #   `https://aws_account_id.dkr.ecr.region.amazonaws.com`. For example,
    #   `https://012345678910.dkr.ecr.us-east-1.amazonaws.com`..
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/AuthorizationData AWS API Documentation
    #
    class AuthorizationData < Struct.new(
      :authorization_token,
      :expires_at,
      :proxy_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image details of the Amazon ECR container image.
    #
    # @!attribute [rw] architecture
    #   The architecture of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The image author of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] image_hash
    #   The image hash of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The image tags attached to the Amazon ECR container image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] platform
    #   The platform of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] pushed_at
    #   The date and time the Amazon ECR container image was pushed.
    #   @return [Time]
    #
    # @!attribute [rw] registry
    #   The registry the Amazon ECR container image belongs to.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository the Amazon ECR container image resides
    #   in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/AwsEcrContainerImageDetails AWS API Documentation
    #
    class AwsEcrContainerImageDetails < Struct.new(
      :architecture,
      :author,
      :image_hash,
      :image_tags,
      :platform,
      :pushed_at,
      :registry,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the image layers to check. If you do not specify a
    #   registry, the default registry is assumed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchCheckLayerAvailabilityRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchCheckLayerAvailabilityResponse AWS API Documentation
    #
    class BatchCheckLayerAvailabilityResponse < Struct.new(
      :layers,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes specified images within a specified repository. Images are
    # specified with either the `imageTag` or `imageDigest`.
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the image to delete. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository that contains the image to delete.
    #   @return [String]
    #
    # @!attribute [rw] image_ids
    #   A list of image ID references that correspond to images to delete.
    #   The format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchDeleteImageRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchDeleteImageResponse AWS API Documentation
    #
    class BatchDeleteImageResponse < Struct.new(
      :image_ids,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the images to describe. If you do not specify a registry,
    #   the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository that contains the images to describe.
    #   @return [String]
    #
    # @!attribute [rw] image_ids
    #   A list of image ID references that correspond to images to describe.
    #   The format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @!attribute [rw] accepted_media_types
    #   The accepted media types for the request.
    #
    #   Valid values: `application/vnd.docker.distribution.manifest.v1+json`
    #   \| `application/vnd.docker.distribution.manifest.v2+json` \|
    #   `application/vnd.oci.image.manifest.v1+json`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchGetImageRequest AWS API Documentation
    #
    class BatchGetImageRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :accepted_media_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] images
    #   A list of image objects corresponding to the image references in the
    #   request.
    #   @return [Array<Types::Image>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::ImageFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchGetImageResponse AWS API Documentation
    #
    class BatchGetImageResponse < Struct.new(
      :images,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_names
    #   One or more repository names to get the scanning configuration for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchGetRepositoryScanningConfigurationRequest AWS API Documentation
    #
    class BatchGetRepositoryScanningConfigurationRequest < Struct.new(
      :repository_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scanning_configurations
    #   The scanning configuration for the requested repositories.
    #   @return [Array<Types::RepositoryScanningConfiguration>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::RepositoryScanningConfigurationFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchGetRepositoryScanningConfigurationResponse AWS API Documentation
    #
    class BatchGetRepositoryScanningConfigurationResponse < Struct.new(
      :scanning_configurations,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   which to upload layers. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to associate with the image layer.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CompleteLayerUploadRequest AWS API Documentation
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
    #   The registry ID associated with the request.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CompleteLayerUploadResponse AWS API Documentation
    #
    class CompleteLayerUploadResponse < Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ecr_repository_prefix
    #   The repository name prefix to use when caching images from the
    #   source registry.
    #   @return [String]
    #
    # @!attribute [rw] upstream_registry_url
    #   The registry URL of the upstream public registry to use as the
    #   source for the pull through cache rule.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   create the pull through cache rule for. If you do not specify a
    #   registry, the default registry is assumed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreatePullThroughCacheRuleRequest AWS API Documentation
    #
    class CreatePullThroughCacheRuleRequest < Struct.new(
      :ecr_repository_prefix,
      :upstream_registry_url,
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ecr_repository_prefix
    #   The Amazon ECR repository prefix associated with the pull through
    #   cache rule.
    #   @return [String]
    #
    # @!attribute [rw] upstream_registry_url
    #   The upstream registry URL associated with the pull through cache
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time, in JavaScript date format, when the pull through
    #   cache rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreatePullThroughCacheRuleResponse AWS API Documentation
    #
    class CreatePullThroughCacheRuleResponse < Struct.new(
      :ecr_repository_prefix,
      :upstream_registry_url,
      :created_at,
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   create the repository. If you do not specify a registry, the default
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name to use for the repository. The repository name may be
    #   specified on its own (such as `nginx-web-app`) or it can be
    #   prepended with a namespace to group the repository into a category
    #   (such as `project-a/nginx-web-app`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the repository to help you categorize
    #   and organize them. Each tag consists of a key and an optional value,
    #   both of which you define. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length
    #   of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] image_tag_mutability
    #   The tag mutability setting for the repository. If this parameter is
    #   omitted, the default setting of `MUTABLE` will be used which will
    #   allow image tags to be overwritten. If `IMMUTABLE` is specified, all
    #   image tags within the repository will be immutable which will
    #   prevent them from being overwritten.
    #   @return [String]
    #
    # @!attribute [rw] image_scanning_configuration
    #   The image scanning configuration for the repository. This determines
    #   whether images are scanned for known vulnerabilities after being
    #   pushed to the repository.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the repository. This determines how
    #   the contents of your repository are encrypted at rest.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreateRepositoryRequest AWS API Documentation
    #
    class CreateRepositoryRequest < Struct.new(
      :registry_id,
      :repository_name,
      :tags,
      :image_tag_mutability,
      :image_scanning_configuration,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository that was created.
    #   @return [Types::Repository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreateRepositoryResponse AWS API Documentation
    #
    class CreateRepositoryResponse < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CVSS score for a finding.
    #
    # @!attribute [rw] base_score
    #   The base CVSS score used for the finding.
    #   @return [Float]
    #
    # @!attribute [rw] scoring_vector
    #   The vector string of the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of CVSS used for the score.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CvssScore AWS API Documentation
    #
    class CvssScore < Struct.new(
      :base_score,
      :scoring_vector,
      :source,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on adjustments Amazon Inspector made to the CVSS score for a
    # finding.
    #
    # @!attribute [rw] metric
    #   The metric used to adjust the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the CVSS score has been adjustment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CvssScoreAdjustment AWS API Documentation
    #
    class CvssScoreAdjustment < Struct.new(
      :metric,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the CVSS score.
    #
    # @!attribute [rw] adjustments
    #   An object that contains details about adjustment Amazon Inspector
    #   made to the CVSS score.
    #   @return [Array<Types::CvssScoreAdjustment>]
    #
    # @!attribute [rw] score
    #   The CVSS score.
    #   @return [Float]
    #
    # @!attribute [rw] score_source
    #   The source for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] scoring_vector
    #   The vector for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The CVSS version used in scoring.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CvssScoreDetails AWS API Documentation
    #
    class CvssScoreDetails < Struct.new(
      :adjustments,
      :score,
      :score_source,
      :scoring_vector,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteLifecyclePolicyRequest AWS API Documentation
    #
    class DeleteLifecyclePolicyRequest < Struct.new(
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
    # @!attribute [rw] lifecycle_policy_text
    #   The JSON lifecycle policy text.
    #   @return [String]
    #
    # @!attribute [rw] last_evaluated_at
    #   The time stamp of the last time that the lifecycle policy was run.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteLifecyclePolicyResponse AWS API Documentation
    #
    class DeleteLifecyclePolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      :last_evaluated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ecr_repository_prefix
    #   The Amazon ECR repository prefix associated with the pull through
    #   cache rule to delete.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the pull through cache rule. If you do not specify a
    #   registry, the default registry is assumed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeletePullThroughCacheRuleRequest AWS API Documentation
    #
    class DeletePullThroughCacheRuleRequest < Struct.new(
      :ecr_repository_prefix,
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ecr_repository_prefix
    #   The Amazon ECR repository prefix associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] upstream_registry_url
    #   The upstream registry URL associated with the pull through cache
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp associated with the pull through cache rule.
    #   @return [Time]
    #
    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeletePullThroughCacheRuleResponse AWS API Documentation
    #
    class DeletePullThroughCacheRuleResponse < Struct.new(
      :ecr_repository_prefix,
      :upstream_registry_url,
      :created_at,
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRegistryPolicyRequest AWS API Documentation
    #
    class DeleteRegistryPolicyRequest < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   The registry ID associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The contents of the registry permissions policy that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRegistryPolicyResponse AWS API Documentation
    #
    class DeleteRegistryPolicyResponse < Struct.new(
      :registry_id,
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository policy to delete. If you do not specify a
    #   registry, the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that is associated with the repository
    #   policy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepositoryPolicyRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepositoryPolicyResponse AWS API Documentation
    #
    class DeleteRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository to delete. If you do not specify a registry,
    #   the default registry is assumed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepositoryRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepositoryResponse AWS API Documentation
    #
    class DeleteRepositoryResponse < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_name
    #   The name of the repository that the image is in.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry. If
    #   you do not specify a registry, the default registry is assumed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImageReplicationStatusRequest AWS API Documentation
    #
    class DescribeImageReplicationStatusRequest < Struct.new(
      :repository_name,
      :image_id,
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_name
    #   The repository name associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] replication_statuses
    #   The replication status details for the images in the specified
    #   repository.
    #   @return [Array<Types::ImageReplicationStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImageReplicationStatusResponse AWS API Documentation
    #
    class DescribeImageReplicationStatusResponse < Struct.new(
      :repository_name,
      :image_id,
      :replication_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to describe the image scan findings
    #   for. If you do not specify a registry, the default registry is
    #   assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository for the image for which to describe the scan
    #   findings.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeImageScanFindings` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value. This value is null when there are no more results
    #   to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of image scan results returned by
    #   `DescribeImageScanFindings` in paginated output. When this parameter
    #   is used, `DescribeImageScanFindings` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `DescribeImageScanFindings` request with the returned
    #   `nextToken` value. This value can be between 1 and 1000. If this
    #   parameter is not used, then `DescribeImageScanFindings` returns up
    #   to 100 results and a `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImageScanFindingsRequest AWS API Documentation
    #
    class DescribeImageScanFindingsRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :next_token,
      :max_results)
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
    # @!attribute [rw] image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] image_scan_status
    #   The current state of the scan.
    #   @return [Types::ImageScanStatus]
    #
    # @!attribute [rw] image_scan_findings
    #   The information contained in the image scan findings.
    #   @return [Types::ImageScanFindings]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `DescribeImageScanFindings` request. When the results of a
    #   `DescribeImageScanFindings` request exceed `maxResults`, this value
    #   can be used to retrieve the next page of results. This value is null
    #   when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImageScanFindingsResponse AWS API Documentation
    #
    class DescribeImageScanFindingsResponse < Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :image_scan_status,
      :image_scan_findings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a filter on a DescribeImages operation.
    #
    # @!attribute [rw] tag_status
    #   The tag status with which to filter your DescribeImages results. You
    #   can filter results based on whether they are `TAGGED` or `UNTAGGED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImagesFilter AWS API Documentation
    #
    class DescribeImagesFilter < Struct.new(
      :tag_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to describe images. If you do not
    #   specify a registry, the default registry is assumed.
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
    # @!attribute [rw] filter
    #   The filter key and value with which to filter your `DescribeImages`
    #   results.
    #   @return [Types::DescribeImagesFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImagesRequest AWS API Documentation
    #
    class DescribeImagesRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :next_token,
      :max_results,
      :filter)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImagesResponse AWS API Documentation
    #
    class DescribeImagesResponse < Struct.new(
      :image_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   return the pull through cache rules for. If you do not specify a
    #   registry, the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] ecr_repository_prefixes
    #   The Amazon ECR repository prefixes associated with the pull through
    #   cache rules to return. If no repository prefix value is specified,
    #   all pull through cache rules are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribePullThroughCacheRulesRequest` request where `maxResults`
    #   was used and the results exceeded the value of that parameter.
    #   Pagination continues from the end of the previous results that
    #   returned the `nextToken` value. This value is null when there are no
    #   more results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of pull through cache rules returned by
    #   `DescribePullThroughCacheRulesRequest` in paginated output. When
    #   this parameter is used, `DescribePullThroughCacheRulesRequest` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another
    #   `DescribePullThroughCacheRulesRequest` request with the returned
    #   `nextToken` value. This value can be between 1 and 1000. If this
    #   parameter is not used, then `DescribePullThroughCacheRulesRequest`
    #   returns up to 100 results and a `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribePullThroughCacheRulesRequest AWS API Documentation
    #
    class DescribePullThroughCacheRulesRequest < Struct.new(
      :registry_id,
      :ecr_repository_prefixes,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pull_through_cache_rules
    #   The details of the pull through cache rules.
    #   @return [Array<Types::PullThroughCacheRule>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `DescribePullThroughCacheRulesRequest` request. When the results of
    #   a `DescribePullThroughCacheRulesRequest` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is null when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribePullThroughCacheRulesResponse AWS API Documentation
    #
    class DescribePullThroughCacheRulesResponse < Struct.new(
      :pull_through_cache_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRegistryRequest AWS API Documentation
    #
    class DescribeRegistryRequest < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   The ID of the registry.
    #   @return [String]
    #
    # @!attribute [rw] replication_configuration
    #   The replication configuration for the registry.
    #   @return [Types::ReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRegistryResponse AWS API Documentation
    #
    class DescribeRegistryResponse < Struct.new(
      :registry_id,
      :replication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repositories to be described. If you do not specify a
    #   registry, the default registry is assumed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRepositoriesRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRepositoriesResponse AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/EmptyUploadException AWS API Documentation
    #
    class EmptyUploadException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption configuration for the repository. This determines how
    # the contents of your repository are encrypted at rest.
    #
    # By default, when no encryption configuration is set or the `AES256`
    # encryption type is used, Amazon ECR uses server-side encryption with
    # Amazon S3-managed encryption keys which encrypts your data at rest
    # using an AES-256 encryption algorithm. This does not require any
    # action on your part.
    #
    # For more control over the encryption of the contents of your
    # repository, you can use server-side encryption with Key Management
    # Service key stored in Key Management Service (KMS) to encrypt your
    # images. For more information, see [Amazon ECR encryption at rest][1]
    # in the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/encryption-at-rest.html
    #
    # @!attribute [rw] encryption_type
    #   The encryption type to use.
    #
    #   If you use the `KMS` encryption type, the contents of the repository
    #   will be encrypted using server-side encryption with Key Management
    #   Service key stored in KMS. When you use KMS to encrypt your data,
    #   you can either use the default Amazon Web Services managed KMS key
    #   for Amazon ECR, or specify your own KMS key, which you already
    #   created. For more information, see [Protecting data using
    #   server-side encryption with an KMS key stored in Key Management
    #   Service (SSE-KMS)][1] in the *Amazon Simple Storage Service Console
    #   Developer Guide*.
    #
    #   If you use the `AES256` encryption type, Amazon ECR uses server-side
    #   encryption with Amazon S3-managed encryption keys which encrypts the
    #   images in the repository using an AES-256 encryption algorithm. For
    #   more information, see [Protecting data using server-side encryption
    #   with Amazon S3-managed encryption keys (SSE-S3)][2] in the *Amazon
    #   Simple Storage Service Console Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   If you use the `KMS` encryption type, specify the KMS key to use for
    #   encryption. The alias, key ID, or full ARN of the KMS key can be
    #   specified. The key must exist in the same Region as the repository.
    #   If no key is specified, the default Amazon Web Services managed KMS
    #   key for Amazon ECR will be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :encryption_type,
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an enhanced image scan. This is returned when enhanced
    # scanning is enabled for your private registry.
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID associated with the image.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] finding_arn
    #   The Amazon Resource Number (ARN) of the finding.
    #   @return [String]
    #
    # @!attribute [rw] first_observed_at
    #   The date and time that the finding was first observed.
    #   @return [Time]
    #
    # @!attribute [rw] last_observed_at
    #   The date and time that the finding was last observed.
    #   @return [Time]
    #
    # @!attribute [rw] package_vulnerability_details
    #   An object that contains the details of a package vulnerability
    #   finding.
    #   @return [Types::PackageVulnerabilityDetails]
    #
    # @!attribute [rw] remediation
    #   An object that contains the details about how to remediate a
    #   finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] resources
    #   Contains information on the resources involved in a finding.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] score
    #   The Amazon Inspector score given to the finding.
    #   @return [Float]
    #
    # @!attribute [rw] score_details
    #   An object that contains details of the Amazon Inspector score.
    #   @return [Types::ScoreDetails]
    #
    # @!attribute [rw] severity
    #   The severity of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the finding.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the finding.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the finding was last updated at.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/EnhancedImageScanFinding AWS API Documentation
    #
    class EnhancedImageScanFinding < Struct.new(
      :aws_account_id,
      :description,
      :finding_arn,
      :first_observed_at,
      :last_observed_at,
      :package_vulnerability_details,
      :remediation,
      :resources,
      :score,
      :score_details,
      :severity,
      :status,
      :title,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_ids
    #   A list of Amazon Web Services account IDs that are associated with
    #   the registries for which to get AuthorizationData objects. If you do
    #   not specify a registry, the default registry is assumed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetAuthorizationTokenRequest AWS API Documentation
    #
    class GetAuthorizationTokenRequest < Struct.new(
      :registry_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorization_data
    #   A list of authorization token data objects that correspond to the
    #   `registryIds` values in the request.
    #   @return [Array<Types::AuthorizationData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetAuthorizationTokenResponse AWS API Documentation
    #
    class GetAuthorizationTokenResponse < Struct.new(
      :authorization_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the image layer to download. If you do not specify a
    #   registry, the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that is associated with the image layer
    #   to download.
    #   @return [String]
    #
    # @!attribute [rw] layer_digest
    #   The digest of the image layer to download.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetDownloadUrlForLayerRequest AWS API Documentation
    #
    class GetDownloadUrlForLayerRequest < Struct.new(
      :registry_id,
      :repository_name,
      :layer_digest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] download_url
    #   The pre-signed Amazon S3 download URL for the requested layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_digest
    #   The digest of the image layer to download.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetDownloadUrlForLayerResponse AWS API Documentation
    #
    class GetDownloadUrlForLayerResponse < Struct.new(
      :download_url,
      :layer_digest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] image_ids
    #   The list of imageIDs to be included.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated 
    #   `GetLifecyclePolicyPreviewRequest` request where `maxResults` was
    #   used and the  results exceeded the value of that parameter.
    #   Pagination continues from the end of the  previous results that
    #   returned the `nextToken` value. This value is  `null` when there are
    #   no more results to return. This option cannot be used when you
    #   specify images with `imageIds`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository results returned by
    #   `GetLifecyclePolicyPreviewRequest` in  paginated output. When this
    #   parameter is used, `GetLifecyclePolicyPreviewRequest` only returns 
    #   `maxResults` results in a single page along with a `nextToken` 
    #   response element. The remaining results of the initial request can
    #   be seen by sending  another `GetLifecyclePolicyPreviewRequest`
    #   request with the returned `nextToken`  value. This value can be
    #   between 1 and 1000. If this  parameter is not used, then
    #   `GetLifecyclePolicyPreviewRequest` returns up to  100 results and a
    #   `nextToken` value, if  applicable. This option cannot be used when
    #   you specify images with `imageIds`.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   An optional parameter that filters results based on image tag status
    #   and all tags, if tagged.
    #   @return [Types::LifecyclePolicyPreviewFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicyPreviewRequest AWS API Documentation
    #
    class GetLifecyclePolicyPreviewRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :next_token,
      :max_results,
      :filter)
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
    # @!attribute [rw] lifecycle_policy_text
    #   The JSON lifecycle policy text.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the lifecycle policy preview request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `GetLifecyclePolicyPreview` request. When the results of a
    #   `GetLifecyclePolicyPreview` request exceed `maxResults`, this value
    #   can be used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] preview_results
    #   The results of the lifecycle policy preview request.
    #   @return [Array<Types::LifecyclePolicyPreviewResult>]
    #
    # @!attribute [rw] summary
    #   The list of images that is returned as a result of the action.
    #   @return [Types::LifecyclePolicyPreviewSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicyPreviewResponse AWS API Documentation
    #
    class GetLifecyclePolicyPreviewResponse < Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      :status,
      :next_token,
      :preview_results,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicyRequest AWS API Documentation
    #
    class GetLifecyclePolicyRequest < Struct.new(
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
    # @!attribute [rw] lifecycle_policy_text
    #   The JSON lifecycle policy text.
    #   @return [String]
    #
    # @!attribute [rw] last_evaluated_at
    #   The time stamp of the last time that the lifecycle policy was run.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicyResponse AWS API Documentation
    #
    class GetLifecyclePolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      :last_evaluated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRegistryPolicyRequest AWS API Documentation
    #
    class GetRegistryPolicyRequest < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   The ID of the registry.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON text of the permissions policy for a registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRegistryPolicyResponse AWS API Documentation
    #
    class GetRegistryPolicyResponse < Struct.new(
      :registry_id,
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRegistryScanningConfigurationRequest AWS API Documentation
    #
    class GetRegistryScanningConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   The ID of the registry.
    #   @return [String]
    #
    # @!attribute [rw] scanning_configuration
    #   The scanning configuration for the registry.
    #   @return [Types::RegistryScanningConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRegistryScanningConfigurationResponse AWS API Documentation
    #
    class GetRegistryScanningConfigurationResponse < Struct.new(
      :registry_id,
      :scanning_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository with the policy to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRepositoryPolicyRequest AWS API Documentation
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
    #   The JSON repository policy text associated with the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRepositoryPolicyResponse AWS API Documentation
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
    #   The Amazon Web Services account ID associated with the registry
    #   containing the image.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/Image AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageAlreadyExistsException AWS API Documentation
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
    #   The Amazon Web Services account ID associated with the registry to
    #   which this image belongs.
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
    # @!attribute [rw] image_scan_status
    #   The current state of the scan.
    #   @return [Types::ImageScanStatus]
    #
    # @!attribute [rw] image_scan_findings_summary
    #   A summary of the last completed image scan.
    #   @return [Types::ImageScanFindingsSummary]
    #
    # @!attribute [rw] image_manifest_media_type
    #   The media type of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] artifact_media_type
    #   The artifact media type of the image.
    #   @return [String]
    #
    # @!attribute [rw] last_recorded_pull_time
    #   The date and time, expressed in standard JavaScript date format,
    #   when Amazon ECR recorded the last image pull.
    #
    #   <note markdown="1"> Amazon ECR refreshes the last image pull timestamp at least once
    #   every 24 hours. For example, if you pull an image once a day then
    #   the `lastRecordedPullTime` timestamp will indicate the exact time
    #   that the image was last pulled. However, if you pull an image once
    #   an hour, because Amazon ECR refreshes the `lastRecordedPullTime`
    #   timestamp at least once every 24 hours, the result may not be the
    #   exact time that the image was last pulled.
    #
    #    </note>
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageDetail AWS API Documentation
    #
    class ImageDetail < Struct.new(
      :registry_id,
      :repository_name,
      :image_digest,
      :image_tags,
      :image_size_in_bytes,
      :image_pushed_at,
      :image_scan_status,
      :image_scan_findings_summary,
      :image_manifest_media_type,
      :artifact_media_type,
      :last_recorded_pull_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified image digest does not match the digest that Amazon ECR
    # calculated for the image.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageDigestDoesNotMatchException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageFailure AWS API Documentation
    #
    class ImageFailure < Struct.new(
      :image_id,
      :failure_code,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object with identifying information for an image in an Amazon ECR
    # repository.
    #
    # @!attribute [rw] image_digest
    #   The `sha256` digest of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] image_tag
    #   The tag used for the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageIdentifier AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageNotFoundException AWS API Documentation
    #
    class ImageNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the replication process for an image.
    #
    # @!attribute [rw] region
    #   The destination Region for the image replication.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   which the image belongs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The image replication status.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code for a replication that has failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageReplicationStatus AWS API Documentation
    #
    class ImageReplicationStatus < Struct.new(
      :region,
      :registry_id,
      :status,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an image scan finding.
    #
    # @!attribute [rw] name
    #   The name associated with the finding, usually a CVE number.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   A link containing additional details about the security
    #   vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The finding severity.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A collection of attributes of the host from which the finding is
    #   generated.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageScanFinding AWS API Documentation
    #
    class ImageScanFinding < Struct.new(
      :name,
      :description,
      :uri,
      :severity,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an image scan.
    #
    # @!attribute [rw] image_scan_completed_at
    #   The time of the last completed image scan.
    #   @return [Time]
    #
    # @!attribute [rw] vulnerability_source_updated_at
    #   The time when the vulnerability data was last scanned.
    #   @return [Time]
    #
    # @!attribute [rw] finding_severity_counts
    #   The image vulnerability counts, sorted by severity.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] findings
    #   The findings from the image scan.
    #   @return [Array<Types::ImageScanFinding>]
    #
    # @!attribute [rw] enhanced_findings
    #   Details about the enhanced scan findings from Amazon Inspector.
    #   @return [Array<Types::EnhancedImageScanFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageScanFindings AWS API Documentation
    #
    class ImageScanFindings < Struct.new(
      :image_scan_completed_at,
      :vulnerability_source_updated_at,
      :finding_severity_counts,
      :findings,
      :enhanced_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the last completed image scan.
    #
    # @!attribute [rw] image_scan_completed_at
    #   The time of the last completed image scan.
    #   @return [Time]
    #
    # @!attribute [rw] vulnerability_source_updated_at
    #   The time when the vulnerability data was last scanned.
    #   @return [Time]
    #
    # @!attribute [rw] finding_severity_counts
    #   The image vulnerability counts, sorted by severity.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageScanFindingsSummary AWS API Documentation
    #
    class ImageScanFindingsSummary < Struct.new(
      :image_scan_completed_at,
      :vulnerability_source_updated_at,
      :finding_severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current status of an image scan.
    #
    # @!attribute [rw] status
    #   The current state of an image scan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image scan status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageScanStatus AWS API Documentation
    #
    class ImageScanStatus < Struct.new(
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image scanning configuration for a repository.
    #
    # @!attribute [rw] scan_on_push
    #   The setting that determines whether images are scanned after being
    #   pushed to a repository. If set to `true`, images will be scanned
    #   after being pushed. If this parameter is not specified, it will
    #   default to `false` and images will not be scanned unless a scan is
    #   manually started with the [API\_StartImageScan][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECR/latest/APIReference/API_StartImageScan.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageScanningConfiguration AWS API Documentation
    #
    class ImageScanningConfiguration < Struct.new(
      :scan_on_push)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified image is tagged with a tag that already exists. The
    # repository is configured for tag immutability.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ImageTagAlreadyExistsException AWS API Documentation
    #
    class ImageTagAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   which you intend to upload layers. If you do not specify a registry,
    #   the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to which you intend to upload layers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InitiateLayerUploadRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InitiateLayerUploadResponse AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InvalidLayerException AWS API Documentation
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
    #   The registry ID associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   The upload ID associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] last_valid_byte_received
    #   The last valid byte received from the layer part upload that is
    #   associated with the exception.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InvalidLayerPartException AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InvalidParameterException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InvalidTagParameterException AWS API Documentation
    #
    class InvalidTagParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed due to a KMS exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] kms_error
    #   The error code returned by KMS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/KmsException AWS API Documentation
    #
    class KmsException < Struct.new(
      :message,
      :kms_error)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/Layer AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LayerAlreadyExistsException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LayerFailure AWS API Documentation
    #
    class LayerFailure < Struct.new(
      :layer_digest,
      :failure_code,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified layer is not available because it is not associated with
    # an image. Unassociated image layers may be cleaned up at any time.
    #
    # @!attribute [rw] message
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LayerInaccessibleException AWS API Documentation
    #
    class LayerInaccessibleException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Layer parts must be at least 5 MiB in size.
    #
    # @!attribute [rw] message
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LayerPartTooSmallException AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LayersNotFoundException AWS API Documentation
    #
    class LayersNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The lifecycle policy could not be found, and no policy is set to the
    # repository.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LifecyclePolicyNotFoundException AWS API Documentation
    #
    class LifecyclePolicyNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter for the lifecycle policy preview.
    #
    # @!attribute [rw] tag_status
    #   The tag status of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LifecyclePolicyPreviewFilter AWS API Documentation
    #
    class LifecyclePolicyPreviewFilter < Struct.new(
      :tag_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The previous lifecycle policy preview request has not completed. Wait
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LifecyclePolicyPreviewInProgressException AWS API Documentation
    #
    class LifecyclePolicyPreviewInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is no dry run for this repository.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LifecyclePolicyPreviewNotFoundException AWS API Documentation
    #
    class LifecyclePolicyPreviewNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of the lifecycle policy preview.
    #
    # @!attribute [rw] image_tags
    #   The list of tags associated with this image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_digest
    #   The `sha256` digest of the image manifest.
    #   @return [String]
    #
    # @!attribute [rw] image_pushed_at
    #   The date and time, expressed in standard JavaScript date format, at
    #   which the current image was pushed to the repository.
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   The type of action to be taken.
    #   @return [Types::LifecyclePolicyRuleAction]
    #
    # @!attribute [rw] applied_rule_priority
    #   The priority of the applied rule.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LifecyclePolicyPreviewResult AWS API Documentation
    #
    class LifecyclePolicyPreviewResult < Struct.new(
      :image_tags,
      :image_digest,
      :image_pushed_at,
      :action,
      :applied_rule_priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the lifecycle policy preview request.
    #
    # @!attribute [rw] expiring_image_total_count
    #   The number of expiring images.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LifecyclePolicyPreviewSummary AWS API Documentation
    #
    class LifecyclePolicyPreviewSummary < Struct.new(
      :expiring_image_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of action to be taken.
    #
    # @!attribute [rw] type
    #   The type of action to be taken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LifecyclePolicyRuleAction AWS API Documentation
    #
    class LifecyclePolicyRuleAction < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because it would have exceeded a service
    # limit for your account. For more information, see [Amazon ECR service
    # quotas][1] in the Amazon Elastic Container Registry User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/service-quotas.html
    #
    # @!attribute [rw] message
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a filter on a ListImages operation.
    #
    # @!attribute [rw] tag_status
    #   The tag status with which to filter your ListImages results. You can
    #   filter results based on whether they are `TAGGED` or `UNTAGGED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListImagesFilter AWS API Documentation
    #
    class ListImagesFilter < Struct.new(
      :tag_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to list images. If you do not
    #   specify a registry, the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository with image IDs to be listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListImages` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   This value is `null` when there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of image results returned by `ListImages` in
    #   paginated output. When this parameter is used, `ListImages` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListImages` request with the
    #   returned `nextToken` value. This value can be between 1 and 1000. If
    #   this parameter is not used, then `ListImages` returns up to 100
    #   results and a `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   The filter key and value with which to filter your `ListImages`
    #   results.
    #   @return [Types::ListImagesFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListImagesRequest AWS API Documentation
    #
    class ListImagesRequest < Struct.new(
      :registry_id,
      :repository_name,
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_ids
    #   The list of image IDs for the requested repository.
    #   @return [Array<Types::ImageIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListImages` request.
    #   When the results of a `ListImages` request exceed `maxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListImagesResponse AWS API Documentation
    #
    class ListImagesResponse < Struct.new(
      :image_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. Currently, the only supported resource is an
    #   Amazon ECR repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListTagsForResourceRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a package vulnerability finding.
    #
    # @!attribute [rw] cvss
    #   An object that contains details about the CVSS score of a finding.
    #   @return [Array<Types::CvssScore>]
    #
    # @!attribute [rw] reference_urls
    #   One or more URLs that contain details about this vulnerability type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   One or more vulnerabilities related to the one identified in this
    #   finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   A URL to the source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] vendor_created_at
    #   The date and time that this vulnerability was first added to the
    #   vendor's database.
    #   @return [Time]
    #
    # @!attribute [rw] vendor_severity
    #   The severity the vendor has given to this vulnerability type.
    #   @return [String]
    #
    # @!attribute [rw] vendor_updated_at
    #   The date and time the vendor last updated this vulnerability in
    #   their database.
    #   @return [Time]
    #
    # @!attribute [rw] vulnerability_id
    #   The ID given to this vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vulnerable_packages
    #   The packages impacted by this vulnerability.
    #   @return [Array<Types::VulnerablePackage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PackageVulnerabilityDetails AWS API Documentation
    #
    class PackageVulnerabilityDetails < Struct.new(
      :cvss,
      :reference_urls,
      :related_vulnerabilities,
      :source,
      :source_url,
      :vendor_created_at,
      :vendor_severity,
      :vendor_updated_at,
      :vulnerability_id,
      :vulnerable_packages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a pull through cache rule.
    #
    # @!attribute [rw] ecr_repository_prefix
    #   The Amazon ECR repository prefix associated with the pull through
    #   cache rule.
    #   @return [String]
    #
    # @!attribute [rw] upstream_registry_url
    #   The upstream registry URL associated with the pull through cache
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the pull through cache was created.
    #   @return [Time]
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry the
    #   pull through cache rule is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PullThroughCacheRule AWS API Documentation
    #
    class PullThroughCacheRule < Struct.new(
      :ecr_repository_prefix,
      :upstream_registry_url,
      :created_at,
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pull through cache rule with these settings already exists for the
    # private registry.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PullThroughCacheRuleAlreadyExistsException AWS API Documentation
    #
    class PullThroughCacheRuleAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pull through cache rule was not found. Specify a valid pull
    # through cache rule and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PullThroughCacheRuleNotFoundException AWS API Documentation
    #
    class PullThroughCacheRuleNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to put the image. If you do not
    #   specify a registry, the default registry is assumed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageResponse AWS API Documentation
    #
    class PutImageResponse < Struct.new(
      :image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to update the image scanning
    #   configuration setting. If you do not specify a registry, the default
    #   registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository in which to update the image scanning
    #   configuration setting.
    #   @return [String]
    #
    # @!attribute [rw] image_scanning_configuration
    #   The image scanning configuration for the repository. This setting
    #   determines whether images are scanned for known vulnerabilities
    #   after being pushed to the repository.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageScanningConfigurationRequest AWS API Documentation
    #
    class PutImageScanningConfigurationRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_scanning_configuration)
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
    # @!attribute [rw] image_scanning_configuration
    #   The image scanning configuration setting for the repository.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageScanningConfigurationResponse AWS API Documentation
    #
    class PutImageScanningConfigurationResponse < Struct.new(
      :registry_id,
      :repository_name,
      :image_scanning_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to update the image tag mutability
    #   settings. If you do not specify a registry, the default registry is
    #   assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository in which to update the image tag
    #   mutability settings.
    #   @return [String]
    #
    # @!attribute [rw] image_tag_mutability
    #   The tag mutability setting for the repository. If `MUTABLE` is
    #   specified, image tags can be overwritten. If `IMMUTABLE` is
    #   specified, all image tags within the repository will be immutable
    #   which will prevent them from being overwritten.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageTagMutabilityRequest AWS API Documentation
    #
    class PutImageTagMutabilityRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_tag_mutability)
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
    # @!attribute [rw] image_tag_mutability
    #   The image tag mutability setting for the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageTagMutabilityResponse AWS API Documentation
    #
    class PutImageTagMutabilityResponse < Struct.new(
      :registry_id,
      :repository_name,
      :image_tag_mutability)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do  not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to receive the policy.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_policy_text
    #   The JSON repository policy text to apply to the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutLifecyclePolicyRequest AWS API Documentation
    #
    class PutLifecyclePolicyRequest < Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text)
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
    # @!attribute [rw] lifecycle_policy_text
    #   The JSON repository policy text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutLifecyclePolicyResponse AWS API Documentation
    #
    class PutLifecyclePolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_text
    #   The JSON policy text to apply to your registry. The policy text
    #   follows the same format as IAM policy text. For more information,
    #   see [Registry permissions][1] in the *Amazon Elastic Container
    #   Registry User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutRegistryPolicyRequest AWS API Documentation
    #
    class PutRegistryPolicyRequest < Struct.new(
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The registry ID.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON policy text for your registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutRegistryPolicyResponse AWS API Documentation
    #
    class PutRegistryPolicyResponse < Struct.new(
      :registry_id,
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_type
    #   The scanning type to set for the registry.
    #
    #   When a registry scanning configuration is not defined, by default
    #   the `BASIC` scan type is used. When basic scanning is used, you may
    #   specify filters to determine which individual repositories, or all
    #   repositories, are scanned when new images are pushed to those
    #   repositories. Alternatively, you can do manual scans of images with
    #   basic scanning.
    #
    #   When the `ENHANCED` scan type is set, Amazon Inspector provides
    #   automated vulnerability scanning. You may choose between continuous
    #   scanning or scan on push and you may specify filters to determine
    #   which individual repositories, or all repositories, are scanned.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The scanning rules to use for the registry. A scanning rule is used
    #   to determine which repository filters are used and at what frequency
    #   scanning will occur.
    #   @return [Array<Types::RegistryScanningRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutRegistryScanningConfigurationRequest AWS API Documentation
    #
    class PutRegistryScanningConfigurationRequest < Struct.new(
      :scan_type,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_scanning_configuration
    #   The scanning configuration for your registry.
    #   @return [Types::RegistryScanningConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutRegistryScanningConfigurationResponse AWS API Documentation
    #
    class PutRegistryScanningConfigurationResponse < Struct.new(
      :registry_scanning_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_configuration
    #   An object representing the replication configuration for a registry.
    #   @return [Types::ReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutReplicationConfigurationRequest AWS API Documentation
    #
    class PutReplicationConfigurationRequest < Struct.new(
      :replication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_configuration
    #   The contents of the replication configuration for the registry.
    #   @return [Types::ReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutReplicationConfigurationResponse AWS API Documentation
    #
    class PutReplicationConfigurationResponse < Struct.new(
      :replication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the recommended course of action to remediate the
    # finding.
    #
    # @!attribute [rw] url
    #   The URL address to the CVE remediation recommendations.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The recommended course of action to remediate the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :url,
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The manifest list is referencing an image that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ReferencedImagesNotFoundException AWS API Documentation
    #
    class ReferencedImagesNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The registry doesn't have an associated registry policy.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RegistryPolicyNotFoundException AWS API Documentation
    #
    class RegistryPolicyNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scanning configuration for a private registry.
    #
    # @!attribute [rw] scan_type
    #   The type of scanning configured for the registry.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The scanning rules associated with the registry.
    #   @return [Array<Types::RegistryScanningRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RegistryScanningConfiguration AWS API Documentation
    #
    class RegistryScanningConfiguration < Struct.new(
      :scan_type,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a scanning rule for a private registry.
    #
    # @!attribute [rw] scan_frequency
    #   The frequency that scans are performed at for a private registry.
    #   When the `ENHANCED` scan type is specified, the supported scan
    #   frequencies are `CONTINUOUS_SCAN` and `SCAN_ON_PUSH`. When the
    #   `BASIC` scan type is specified, the `SCAN_ON_PUSH` and `MANUAL` scan
    #   frequencies are supported.
    #   @return [String]
    #
    # @!attribute [rw] repository_filters
    #   The repository filters associated with the scanning configuration
    #   for a private registry.
    #   @return [Array<Types::ScanningRepositoryFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RegistryScanningRule AWS API Documentation
    #
    class RegistryScanningRule < Struct.new(
      :scan_frequency,
      :repository_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on how to remediate a finding.
    #
    # @!attribute [rw] recommendation
    #   An object that contains information about the recommended course of
    #   action to remediate the finding.
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/Remediation AWS API Documentation
    #
    class Remediation < Struct.new(
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The replication configuration for a registry.
    #
    # @!attribute [rw] rules
    #   An array of objects representing the replication destinations and
    #   repository filters for a replication configuration.
    #   @return [Array<Types::ReplicationRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ReplicationConfiguration AWS API Documentation
    #
    class ReplicationConfiguration < Struct.new(
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of objects representing the destination for a replication
    # rule.
    #
    # @!attribute [rw] region
    #   The Region to replicate to.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID of the Amazon ECR private
    #   registry to replicate to. When configuring cross-Region replication
    #   within your own registry, specify your own account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ReplicationDestination AWS API Documentation
    #
    class ReplicationDestination < Struct.new(
      :region,
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of objects representing the replication destinations and
    # repository filters for a replication configuration.
    #
    # @!attribute [rw] destinations
    #   An array of objects representing the destination for a replication
    #   rule.
    #   @return [Array<Types::ReplicationDestination>]
    #
    # @!attribute [rw] repository_filters
    #   An array of objects representing the filters for a replication rule.
    #   Specifying a repository filter for a replication rule provides a
    #   method for controlling which repositories in a private registry are
    #   replicated.
    #   @return [Array<Types::RepositoryFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ReplicationRule AWS API Documentation
    #
    class ReplicationRule < Struct.new(
      :destinations,
      :repository_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a repository.
    #
    # @!attribute [rw] repository_arn
    #   The Amazon Resource Name (ARN) that identifies the repository. The
    #   ARN contains the `arn:aws:ecr` namespace, followed by the region of
    #   the repository, Amazon Web Services account ID of the repository
    #   owner, repository namespace, and repository name. For example,
    #   `arn:aws:ecr:region:012345678910:repository/test`.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository.
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
    # @!attribute [rw] image_tag_mutability
    #   The tag mutability setting for the repository.
    #   @return [String]
    #
    # @!attribute [rw] image_scanning_configuration
    #   The image scanning configuration for a repository.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the repository. This determines how
    #   the contents of your repository are encrypted at rest.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/Repository AWS API Documentation
    #
    class Repository < Struct.new(
      :repository_arn,
      :registry_id,
      :repository_name,
      :repository_uri,
      :created_at,
      :image_tag_mutability,
      :image_scanning_configuration,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified repository already exists in the specified registry.
    #
    # @!attribute [rw] message
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RepositoryAlreadyExistsException AWS API Documentation
    #
    class RepositoryAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter settings used with image replication. Specifying a
    # repository filter to a replication rule provides a method for
    # controlling which repositories in a private registry are replicated.
    # If no repository filter is specified, all images in the repository are
    # replicated.
    #
    # @!attribute [rw] filter
    #   The repository filter details. When the `PREFIX_MATCH` filter type
    #   is specified, this value is required and should be the repository
    #   name prefix to configure replication for.
    #   @return [String]
    #
    # @!attribute [rw] filter_type
    #   The repository filter type. The only supported value is
    #   `PREFIX_MATCH`, which is a repository name prefix specified with the
    #   `filter` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RepositoryFilter AWS API Documentation
    #
    class RepositoryFilter < Struct.new(
      :filter,
      :filter_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified repository contains images. To delete a repository that
    # contains images, you must force the deletion with the `force`
    # parameter.
    #
    # @!attribute [rw] message
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RepositoryNotEmptyException AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RepositoryNotFoundException AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RepositoryPolicyNotFoundException AWS API Documentation
    #
    class RepositoryPolicyNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the scanning configuration for a repository.
    #
    # @!attribute [rw] repository_arn
    #   The ARN of the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] scan_on_push
    #   Whether or not scan on push is configured for the repository.
    #   @return [Boolean]
    #
    # @!attribute [rw] scan_frequency
    #   The scan frequency for the repository.
    #   @return [String]
    #
    # @!attribute [rw] applied_scan_filters
    #   The scan filters applied to the repository.
    #   @return [Array<Types::ScanningRepositoryFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RepositoryScanningConfiguration AWS API Documentation
    #
    class RepositoryScanningConfiguration < Struct.new(
      :repository_arn,
      :repository_name,
      :scan_on_push,
      :scan_frequency,
      :applied_scan_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about any failures associated with the scanning
    # configuration of a repository.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/RepositoryScanningConfigurationFailure AWS API Documentation
    #
    class RepositoryScanningConfigurationFailure < Struct.new(
      :repository_name,
      :failure_code,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the resource involved in a finding.
    #
    # @!attribute [rw] details
    #   An object that contains details about the resource involved in a
    #   finding.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :details,
      :id,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the resource involved in the finding.
    #
    # @!attribute [rw] aws_ecr_container_image
    #   An object that contains details about the Amazon ECR container image
    #   involved in the finding.
    #   @return [Types::AwsEcrContainerImageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :aws_ecr_container_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified image scan could not be found. Ensure that image
    # scanning is enabled on the repository and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ScanNotFoundException AWS API Documentation
    #
    class ScanNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a scanning repository filter. For more information on
    # how to use filters, see [Using filters][1] in the *Amazon Elastic
    # Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html#image-scanning-filters
    #
    # @!attribute [rw] filter
    #   The filter to use when scanning.
    #   @return [String]
    #
    # @!attribute [rw] filter_type
    #   The type associated with the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ScanningRepositoryFilter AWS API Documentation
    #
    class ScanningRepositoryFilter < Struct.new(
      :filter,
      :filter_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon Inspector score given to a finding.
    #
    # @!attribute [rw] cvss
    #   An object that contains details about the CVSS score given to a
    #   finding.
    #   @return [Types::CvssScoreDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ScoreDetails AWS API Documentation
    #
    class ScoreDetails < Struct.new(
      :cvss)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a server-side issue.
    #
    # @!attribute [rw] message
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to receive the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_text
    #   The JSON repository policy text to apply to the repository. For more
    #   information, see [Amazon ECR repository policies][1] in the *Amazon
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/SetRepositoryPolicyRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/SetRepositoryPolicyResponse AWS API Documentation
    #
    class SetRepositoryPolicyResponse < Struct.new(
      :registry_id,
      :repository_name,
      :policy_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to start an image scan request. If
    #   you do not specify a registry, the default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the images to scan.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #   @return [Types::ImageIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartImageScanRequest AWS API Documentation
    #
    class StartImageScanRequest < Struct.new(
      :registry_id,
      :repository_name,
      :image_id)
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
    # @!attribute [rw] image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #   @return [Types::ImageIdentifier]
    #
    # @!attribute [rw] image_scan_status
    #   The current state of the scan.
    #   @return [Types::ImageScanStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartImageScanResponse AWS API Documentation
    #
    class StartImageScanResponse < Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :image_scan_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the
    #   default registry is assumed.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to be evaluated.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_policy_text
    #   The policy to be evaluated against. If you do not specify a policy,
    #   the current policy for the repository is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartLifecyclePolicyPreviewRequest AWS API Documentation
    #
    class StartLifecyclePolicyPreviewRequest < Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text)
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
    # @!attribute [rw] lifecycle_policy_text
    #   The JSON repository policy text.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the lifecycle policy preview request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartLifecyclePolicyPreviewResponse AWS API Documentation
    #
    class StartLifecyclePolicyPreviewResponse < Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata to apply to a resource to help you categorize and
    # organize them. Each tag consists of a key and a value, both of which
    # you define. Tag keys can have a maximum character length of 128
    # characters, and tag values can have a maximum length of 256
    # characters.
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that make up a tag. A `key` is a
    #   general label that acts like a category for more specific tag
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A `value` acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the the resource to which to add
    #   tags. Currently, the only supported resource is an Amazon ECR
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The list of tags on the repository is over the limit. The maximum
    # number of tags that can be applied to a repository is 50.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image is of a type that cannot be scanned.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UnsupportedImageTypeException AWS API Documentation
    #
    class UnsupportedImageTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified upstream registry isn't supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UnsupportedUpstreamRegistryException AWS API Documentation
    #
    class UnsupportedUpstreamRegistryException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags. Currently, the only supported resource is an Amazon ECR
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   which you are uploading layer parts. If you do not specify a
    #   registry, the default registry is assumed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UploadLayerPartRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UploadLayerPartResponse AWS API Documentation
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
    #   The error message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UploadNotFoundException AWS API Documentation
    #
    class UploadNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an exception validating this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the vulnerable package identified by a finding.
    #
    # @!attribute [rw] arch
    #   The architecture of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] epoch
    #   The epoch of the vulnerable package.
    #   @return [Integer]
    #
    # @!attribute [rw] file_path
    #   The file path of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] package_manager
    #   The package manager of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] release
    #   The release of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] source_layer_hash
    #   The source layer hash of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the vulnerable package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/VulnerablePackage AWS API Documentation
    #
    class VulnerablePackage < Struct.new(
      :arch,
      :epoch,
      :file_path,
      :name,
      :package_manager,
      :release,
      :source_layer_hash,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

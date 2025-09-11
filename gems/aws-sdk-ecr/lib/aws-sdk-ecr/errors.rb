# frozen_string_literal: true

# This is generated code!

module Aws::ECR
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ECR::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ECR::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {EmptyUploadException}
  # * {ImageAlreadyExistsException}
  # * {ImageDigestDoesNotMatchException}
  # * {ImageNotFoundException}
  # * {ImageTagAlreadyExistsException}
  # * {InvalidLayerException}
  # * {InvalidLayerPartException}
  # * {InvalidParameterException}
  # * {InvalidTagParameterException}
  # * {KmsException}
  # * {LayerAlreadyExistsException}
  # * {LayerInaccessibleException}
  # * {LayerPartTooSmallException}
  # * {LayersNotFoundException}
  # * {LifecyclePolicyNotFoundException}
  # * {LifecyclePolicyPreviewInProgressException}
  # * {LifecyclePolicyPreviewNotFoundException}
  # * {LimitExceededException}
  # * {PullThroughCacheRuleAlreadyExistsException}
  # * {PullThroughCacheRuleNotFoundException}
  # * {ReferencedImagesNotFoundException}
  # * {RegistryPolicyNotFoundException}
  # * {RepositoryAlreadyExistsException}
  # * {RepositoryNotEmptyException}
  # * {RepositoryNotFoundException}
  # * {RepositoryPolicyNotFoundException}
  # * {ScanNotFoundException}
  # * {SecretNotFoundException}
  # * {ServerException}
  # * {TemplateAlreadyExistsException}
  # * {TemplateNotFoundException}
  # * {TooManyTagsException}
  # * {UnableToAccessSecretException}
  # * {UnableToDecryptSecretValueException}
  # * {UnableToGetUpstreamImageException}
  # * {UnableToGetUpstreamLayerException}
  # * {UnsupportedImageTypeException}
  # * {UnsupportedUpstreamRegistryException}
  # * {UploadNotFoundException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The specified layer upload does not contain any layer parts.</p>
    class EmptyUploadException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::EmptyUploadException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified image has already been pushed, and there were no changes to the manifest
    #             or image tag after the last push.</p>
    class ImageAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::ImageAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified image digest does not match the digest that Amazon ECR calculated for the
    #             image.</p>
    class ImageDigestDoesNotMatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::ImageDigestDoesNotMatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The image requested does not exist in the specified repository.</p>
    class ImageNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::ImageNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified image is tagged with a tag that already exists. The repository is
    #             configured for tag immutability.</p>
    class ImageTagAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::ImageTagAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The layer digest calculation performed by Amazon ECR upon receipt of the image layer does
    #             not match the digest specified.</p>
    class InvalidLayerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::InvalidLayerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The layer part size is not valid, or the first byte specified is not consecutive to
    #             the last byte of a previous layer part upload.</p>
    class InvalidLayerPartException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::InvalidLayerPartException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The registry ID associated with the exception.</p>
      def registry_id
        @data[:registry_id]
      end

      # <p>The repository name associated with the exception.</p>
      def repository_name
        @data[:repository_name]
      end

      # <p>The upload ID associated with the exception.</p>
      def upload_id
        @data[:upload_id]
      end

      # <p>The last valid byte received from the layer part upload that is associated with the
      #             exception.</p>
      def last_valid_byte_received
        @data[:last_valid_byte_received]
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    #             request.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An invalid parameter has been specified. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #             a maximum length of 256 characters.</p>
    class InvalidTagParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::InvalidTagParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed due to a KMS exception.</p>
    class KmsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::KmsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The error code returned by KMS.</p>
      def kms_error
        @data[:kms_error]
      end
    end

    # <p>The image layer already exists in the associated repository.</p>
    class LayerAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::LayerAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified layer is not available because it is not associated with an image.
    #             Unassociated image layers may be cleaned up at any time.</p>
    class LayerInaccessibleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::LayerInaccessibleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Layer parts must be at least 5 MiB in size.</p>
    class LayerPartTooSmallException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::LayerPartTooSmallException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified layers could not be found, or the specified layer is not valid for this
    #             repository.</p>
    class LayersNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::LayersNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The lifecycle policy could not be found, and no policy is set to the
    #             repository.</p>
    class LifecyclePolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::LifecyclePolicyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The previous lifecycle policy preview request has not completed. Wait and try
    #             again.</p>
    class LifecyclePolicyPreviewInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::LifecyclePolicyPreviewInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There is no dry run for this repository.</p>
    class LifecyclePolicyPreviewNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::LifecyclePolicyPreviewNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation did not succeed because it would have exceeded a service limit for your
    #             account. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/service-quotas.html">Amazon ECR service quotas</a> in
    #             the Amazon Elastic Container Registry User Guide.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A pull through cache rule with these settings already exists for the private
    #             registry.</p>
    class PullThroughCacheRuleAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::PullThroughCacheRuleAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The pull through cache rule was not found. Specify a valid pull through cache rule and
    #             try again.</p>
    class PullThroughCacheRuleNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::PullThroughCacheRuleNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The manifest list is referencing an image that does not exist.</p>
    class ReferencedImagesNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::ReferencedImagesNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The registry doesn't have an associated registry policy.</p>
    class RegistryPolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::RegistryPolicyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified repository already exists in the specified registry.</p>
    class RepositoryAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::RepositoryAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified repository contains images. To delete a repository that contains images,
    #             you must force the deletion with the <code>force</code> parameter.</p>
    class RepositoryNotEmptyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::RepositoryNotEmptyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified repository could not be found. Check the spelling of the specified
    #             repository and ensure that you are performing operations on the correct registry.</p>
    class RepositoryNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::RepositoryNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified repository and registry combination does not have an associated
    #             repository policy.</p>
    class RepositoryPolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::RepositoryPolicyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified image scan could not be found. Ensure that image scanning is enabled on
    #             the repository and try again.</p>
    class ScanNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::ScanNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The ARN of the secret specified in the pull through cache rule was not found. Update
    #             the pull through cache rule with a valid secret ARN and try again.</p>
    class SecretNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::SecretNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>These errors are usually caused by a server-side issue.</p>
    class ServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::ServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The repository creation template already exists. Specify a unique prefix and try
    #             again.</p>
    class TemplateAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::TemplateAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified repository creation template can't be found. Verify the registry ID and
    #             prefix and try again.</p>
    class TemplateNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::TemplateNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The list of tags on the repository is over the limit. The maximum number of tags that
    #             can be applied to a repository is 50.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The secret is unable to be accessed. Verify the resource permissions for the secret
    #             and try again.</p>
    class UnableToAccessSecretException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::UnableToAccessSecretException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The secret is accessible but is unable to be decrypted. Verify the resource
    #             permisisons and try again.</p>
    class UnableToDecryptSecretValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::UnableToDecryptSecretValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The image or images were unable to be pulled using the pull through cache rule. This
    #             is usually caused because of an issue with the Secrets Manager secret containing the credentials
    #             for the upstream registry.</p>
    class UnableToGetUpstreamImageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::UnableToGetUpstreamImageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There was an issue getting the upstream layer matching the pull through cache
    #             rule.</p>
    class UnableToGetUpstreamLayerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::UnableToGetUpstreamLayerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The image is of a type that cannot be scanned.</p>
    class UnsupportedImageTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::UnsupportedImageTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified upstream registry isn't supported.</p>
    class UnsupportedUpstreamRegistryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::UnsupportedUpstreamRegistryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The upload could not be found, or the specified upload ID is not valid for this
    #             repository.</p>
    class UploadNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::UploadNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>There was an exception validating this request.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECR::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end

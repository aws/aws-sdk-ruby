# frozen_string_literal: true

# This is generated code!

module Aws::ECRPUBLIC
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ECRPUBLIC::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ECRPUBLIC::Errors::ServiceError
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
  # * {LayerAlreadyExistsException}
  # * {LayerPartTooSmallException}
  # * {LayersNotFoundException}
  # * {LimitExceededException}
  # * {ReferencedImagesNotFoundException}
  # * {RegistryNotFoundException}
  # * {RepositoryAlreadyExistsException}
  # * {RepositoryCatalogDataNotFoundException}
  # * {RepositoryNotEmptyException}
  # * {RepositoryNotFoundException}
  # * {RepositoryPolicyNotFoundException}
  # * {ServerException}
  # * {TooManyTagsException}
  # * {UnsupportedCommandException}
  # * {UploadNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The specified layer upload doesn't contain any layer parts.</p>
    class EmptyUploadException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::EmptyUploadException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified image has already been pushed, and there were no changes to the manifest
    #          or image tag after the last push.</p>
    class ImageAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::ImageAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified image digest doesn't match the digest that Amazon ECR calculated for the
    #          image.</p>
    class ImageDigestDoesNotMatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::ImageDigestDoesNotMatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The image requested doesn't exist in the specified repository.</p>
    class ImageNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::ImageNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified image is tagged with a tag that already exists. The repository is
    #          configured for tag immutability.</p>
    class ImageTagAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::ImageTagAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The layer digest calculation performed by Amazon ECR when the image layer doesn't match the
    #          digest specified.</p>
    class InvalidLayerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::InvalidLayerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The layer part size isn't valid, or the first byte specified isn't consecutive to the
    #          last byte of a previous layer part upload.</p>
    class InvalidLayerPartException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::InvalidLayerPartException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The Amazon Web Services account ID that's associated with the layer part.</p>
      def registry_id
        @data[:registry_id]
      end

      # <p>The name of the repository.</p>
      def repository_name
        @data[:repository_name]
      end

      # <p>The upload ID that's associated with the layer part.</p>
      def upload_id
        @data[:upload_id]
      end

      # <p>The position of the last byte of the layer part.</p>
      def last_valid_byte_received
        @data[:last_valid_byte_received]
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    #          request.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An invalid parameter has been specified. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    class InvalidTagParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::InvalidTagParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The image layer already exists in the associated repository.</p>
    class LayerAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::LayerAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Layer parts must be at least 5 MiB in size.</p>
    class LayerPartTooSmallException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::LayerPartTooSmallException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified layers can't be found, or the specified layer isn't valid for this
    #          repository.</p>
    class LayersNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::LayersNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation didn't succeed because it would have exceeded a service limit for your
    #          account. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/service-quotas.html">Amazon ECR Service Quotas</a> in the
    #          Amazon Elastic Container Registry User Guide.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The manifest list is referencing an image that doesn't exist.</p>
    class ReferencedImagesNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::ReferencedImagesNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The registry doesn't exist.</p>
    class RegistryNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::RegistryNotFoundException] data
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
      # @param [Aws::ECRPUBLIC::Types::RepositoryAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The repository catalog data doesn't exist.</p>
    class RepositoryCatalogDataNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::RepositoryCatalogDataNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified repository contains images. To delete a repository that contains images,
    #          you must force the deletion with the <code>force</code> parameter.</p>
    class RepositoryNotEmptyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::RepositoryNotEmptyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified repository can't be found. Check the spelling of the specified repository
    #          and ensure that you're performing operations on the correct registry.</p>
    class RepositoryNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::RepositoryNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified repository and registry combination doesn't have an associated repository
    #          policy.</p>
    class RepositoryPolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::RepositoryPolicyNotFoundException] data
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
      # @param [Aws::ECRPUBLIC::Types::ServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The list of tags on the repository is over the limit. The maximum number of tags that
    #          can be applied to a repository is 50.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The action isn't supported in this Region.</p>
    class UnsupportedCommandException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::UnsupportedCommandException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The upload can't be found, or the specified upload ID isn't valid for this
    #          repository.</p>
    class UploadNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECRPUBLIC::Types::UploadNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end

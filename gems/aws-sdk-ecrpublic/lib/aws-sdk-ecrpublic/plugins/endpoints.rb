# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ECRPublic
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ECRPublic::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ECRPublic::EndpointParameters`'
      ) do |cfg|
        Aws::ECRPublic::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :batch_check_layer_availability
            Aws::ECRPublic::Endpoints::BatchCheckLayerAvailability.build(context)
          when :batch_delete_image
            Aws::ECRPublic::Endpoints::BatchDeleteImage.build(context)
          when :complete_layer_upload
            Aws::ECRPublic::Endpoints::CompleteLayerUpload.build(context)
          when :create_repository
            Aws::ECRPublic::Endpoints::CreateRepository.build(context)
          when :delete_repository
            Aws::ECRPublic::Endpoints::DeleteRepository.build(context)
          when :delete_repository_policy
            Aws::ECRPublic::Endpoints::DeleteRepositoryPolicy.build(context)
          when :describe_image_tags
            Aws::ECRPublic::Endpoints::DescribeImageTags.build(context)
          when :describe_images
            Aws::ECRPublic::Endpoints::DescribeImages.build(context)
          when :describe_registries
            Aws::ECRPublic::Endpoints::DescribeRegistries.build(context)
          when :describe_repositories
            Aws::ECRPublic::Endpoints::DescribeRepositories.build(context)
          when :get_authorization_token
            Aws::ECRPublic::Endpoints::GetAuthorizationToken.build(context)
          when :get_registry_catalog_data
            Aws::ECRPublic::Endpoints::GetRegistryCatalogData.build(context)
          when :get_repository_catalog_data
            Aws::ECRPublic::Endpoints::GetRepositoryCatalogData.build(context)
          when :get_repository_policy
            Aws::ECRPublic::Endpoints::GetRepositoryPolicy.build(context)
          when :initiate_layer_upload
            Aws::ECRPublic::Endpoints::InitiateLayerUpload.build(context)
          when :list_tags_for_resource
            Aws::ECRPublic::Endpoints::ListTagsForResource.build(context)
          when :put_image
            Aws::ECRPublic::Endpoints::PutImage.build(context)
          when :put_registry_catalog_data
            Aws::ECRPublic::Endpoints::PutRegistryCatalogData.build(context)
          when :put_repository_catalog_data
            Aws::ECRPublic::Endpoints::PutRepositoryCatalogData.build(context)
          when :set_repository_policy
            Aws::ECRPublic::Endpoints::SetRepositoryPolicy.build(context)
          when :tag_resource
            Aws::ECRPublic::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ECRPublic::Endpoints::UntagResource.build(context)
          when :upload_layer_part
            Aws::ECRPublic::Endpoints::UploadLayerPart.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ECR
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ECR::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ECR::EndpointParameters`'
      ) do |cfg|
        Aws::ECR::EndpointProvider.new
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
            Aws::ECR::Endpoints::BatchCheckLayerAvailability.build(context)
          when :batch_delete_image
            Aws::ECR::Endpoints::BatchDeleteImage.build(context)
          when :batch_get_image
            Aws::ECR::Endpoints::BatchGetImage.build(context)
          when :batch_get_repository_scanning_configuration
            Aws::ECR::Endpoints::BatchGetRepositoryScanningConfiguration.build(context)
          when :complete_layer_upload
            Aws::ECR::Endpoints::CompleteLayerUpload.build(context)
          when :create_pull_through_cache_rule
            Aws::ECR::Endpoints::CreatePullThroughCacheRule.build(context)
          when :create_repository
            Aws::ECR::Endpoints::CreateRepository.build(context)
          when :delete_lifecycle_policy
            Aws::ECR::Endpoints::DeleteLifecyclePolicy.build(context)
          when :delete_pull_through_cache_rule
            Aws::ECR::Endpoints::DeletePullThroughCacheRule.build(context)
          when :delete_registry_policy
            Aws::ECR::Endpoints::DeleteRegistryPolicy.build(context)
          when :delete_repository
            Aws::ECR::Endpoints::DeleteRepository.build(context)
          when :delete_repository_policy
            Aws::ECR::Endpoints::DeleteRepositoryPolicy.build(context)
          when :describe_image_replication_status
            Aws::ECR::Endpoints::DescribeImageReplicationStatus.build(context)
          when :describe_image_scan_findings
            Aws::ECR::Endpoints::DescribeImageScanFindings.build(context)
          when :describe_images
            Aws::ECR::Endpoints::DescribeImages.build(context)
          when :describe_pull_through_cache_rules
            Aws::ECR::Endpoints::DescribePullThroughCacheRules.build(context)
          when :describe_registry
            Aws::ECR::Endpoints::DescribeRegistry.build(context)
          when :describe_repositories
            Aws::ECR::Endpoints::DescribeRepositories.build(context)
          when :get_authorization_token
            Aws::ECR::Endpoints::GetAuthorizationToken.build(context)
          when :get_download_url_for_layer
            Aws::ECR::Endpoints::GetDownloadUrlForLayer.build(context)
          when :get_lifecycle_policy
            Aws::ECR::Endpoints::GetLifecyclePolicy.build(context)
          when :get_lifecycle_policy_preview
            Aws::ECR::Endpoints::GetLifecyclePolicyPreview.build(context)
          when :get_registry_policy
            Aws::ECR::Endpoints::GetRegistryPolicy.build(context)
          when :get_registry_scanning_configuration
            Aws::ECR::Endpoints::GetRegistryScanningConfiguration.build(context)
          when :get_repository_policy
            Aws::ECR::Endpoints::GetRepositoryPolicy.build(context)
          when :initiate_layer_upload
            Aws::ECR::Endpoints::InitiateLayerUpload.build(context)
          when :list_images
            Aws::ECR::Endpoints::ListImages.build(context)
          when :list_tags_for_resource
            Aws::ECR::Endpoints::ListTagsForResource.build(context)
          when :put_image
            Aws::ECR::Endpoints::PutImage.build(context)
          when :put_image_scanning_configuration
            Aws::ECR::Endpoints::PutImageScanningConfiguration.build(context)
          when :put_image_tag_mutability
            Aws::ECR::Endpoints::PutImageTagMutability.build(context)
          when :put_lifecycle_policy
            Aws::ECR::Endpoints::PutLifecyclePolicy.build(context)
          when :put_registry_policy
            Aws::ECR::Endpoints::PutRegistryPolicy.build(context)
          when :put_registry_scanning_configuration
            Aws::ECR::Endpoints::PutRegistryScanningConfiguration.build(context)
          when :put_replication_configuration
            Aws::ECR::Endpoints::PutReplicationConfiguration.build(context)
          when :set_repository_policy
            Aws::ECR::Endpoints::SetRepositoryPolicy.build(context)
          when :start_image_scan
            Aws::ECR::Endpoints::StartImageScan.build(context)
          when :start_lifecycle_policy_preview
            Aws::ECR::Endpoints::StartLifecyclePolicyPreview.build(context)
          when :tag_resource
            Aws::ECR::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ECR::Endpoints::UntagResource.build(context)
          when :upload_layer_part
            Aws::ECR::Endpoints::UploadLayerPart.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

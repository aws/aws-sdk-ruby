# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Imagebuilder
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Imagebuilder::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Imagebuilder::EndpointParameters`'
      ) do |cfg|
        Aws::Imagebuilder::EndpointProvider.new
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
          when :cancel_image_creation
            Aws::Imagebuilder::Endpoints::CancelImageCreation.build(context)
          when :create_component
            Aws::Imagebuilder::Endpoints::CreateComponent.build(context)
          when :create_container_recipe
            Aws::Imagebuilder::Endpoints::CreateContainerRecipe.build(context)
          when :create_distribution_configuration
            Aws::Imagebuilder::Endpoints::CreateDistributionConfiguration.build(context)
          when :create_image
            Aws::Imagebuilder::Endpoints::CreateImage.build(context)
          when :create_image_pipeline
            Aws::Imagebuilder::Endpoints::CreateImagePipeline.build(context)
          when :create_image_recipe
            Aws::Imagebuilder::Endpoints::CreateImageRecipe.build(context)
          when :create_infrastructure_configuration
            Aws::Imagebuilder::Endpoints::CreateInfrastructureConfiguration.build(context)
          when :delete_component
            Aws::Imagebuilder::Endpoints::DeleteComponent.build(context)
          when :delete_container_recipe
            Aws::Imagebuilder::Endpoints::DeleteContainerRecipe.build(context)
          when :delete_distribution_configuration
            Aws::Imagebuilder::Endpoints::DeleteDistributionConfiguration.build(context)
          when :delete_image
            Aws::Imagebuilder::Endpoints::DeleteImage.build(context)
          when :delete_image_pipeline
            Aws::Imagebuilder::Endpoints::DeleteImagePipeline.build(context)
          when :delete_image_recipe
            Aws::Imagebuilder::Endpoints::DeleteImageRecipe.build(context)
          when :delete_infrastructure_configuration
            Aws::Imagebuilder::Endpoints::DeleteInfrastructureConfiguration.build(context)
          when :get_component
            Aws::Imagebuilder::Endpoints::GetComponent.build(context)
          when :get_component_policy
            Aws::Imagebuilder::Endpoints::GetComponentPolicy.build(context)
          when :get_container_recipe
            Aws::Imagebuilder::Endpoints::GetContainerRecipe.build(context)
          when :get_container_recipe_policy
            Aws::Imagebuilder::Endpoints::GetContainerRecipePolicy.build(context)
          when :get_distribution_configuration
            Aws::Imagebuilder::Endpoints::GetDistributionConfiguration.build(context)
          when :get_image
            Aws::Imagebuilder::Endpoints::GetImage.build(context)
          when :get_image_pipeline
            Aws::Imagebuilder::Endpoints::GetImagePipeline.build(context)
          when :get_image_policy
            Aws::Imagebuilder::Endpoints::GetImagePolicy.build(context)
          when :get_image_recipe
            Aws::Imagebuilder::Endpoints::GetImageRecipe.build(context)
          when :get_image_recipe_policy
            Aws::Imagebuilder::Endpoints::GetImageRecipePolicy.build(context)
          when :get_infrastructure_configuration
            Aws::Imagebuilder::Endpoints::GetInfrastructureConfiguration.build(context)
          when :get_workflow_execution
            Aws::Imagebuilder::Endpoints::GetWorkflowExecution.build(context)
          when :get_workflow_step_execution
            Aws::Imagebuilder::Endpoints::GetWorkflowStepExecution.build(context)
          when :import_component
            Aws::Imagebuilder::Endpoints::ImportComponent.build(context)
          when :import_vm_image
            Aws::Imagebuilder::Endpoints::ImportVmImage.build(context)
          when :list_component_build_versions
            Aws::Imagebuilder::Endpoints::ListComponentBuildVersions.build(context)
          when :list_components
            Aws::Imagebuilder::Endpoints::ListComponents.build(context)
          when :list_container_recipes
            Aws::Imagebuilder::Endpoints::ListContainerRecipes.build(context)
          when :list_distribution_configurations
            Aws::Imagebuilder::Endpoints::ListDistributionConfigurations.build(context)
          when :list_image_build_versions
            Aws::Imagebuilder::Endpoints::ListImageBuildVersions.build(context)
          when :list_image_packages
            Aws::Imagebuilder::Endpoints::ListImagePackages.build(context)
          when :list_image_pipeline_images
            Aws::Imagebuilder::Endpoints::ListImagePipelineImages.build(context)
          when :list_image_pipelines
            Aws::Imagebuilder::Endpoints::ListImagePipelines.build(context)
          when :list_image_recipes
            Aws::Imagebuilder::Endpoints::ListImageRecipes.build(context)
          when :list_image_scan_finding_aggregations
            Aws::Imagebuilder::Endpoints::ListImageScanFindingAggregations.build(context)
          when :list_image_scan_findings
            Aws::Imagebuilder::Endpoints::ListImageScanFindings.build(context)
          when :list_images
            Aws::Imagebuilder::Endpoints::ListImages.build(context)
          when :list_infrastructure_configurations
            Aws::Imagebuilder::Endpoints::ListInfrastructureConfigurations.build(context)
          when :list_tags_for_resource
            Aws::Imagebuilder::Endpoints::ListTagsForResource.build(context)
          when :list_workflow_executions
            Aws::Imagebuilder::Endpoints::ListWorkflowExecutions.build(context)
          when :list_workflow_step_executions
            Aws::Imagebuilder::Endpoints::ListWorkflowStepExecutions.build(context)
          when :put_component_policy
            Aws::Imagebuilder::Endpoints::PutComponentPolicy.build(context)
          when :put_container_recipe_policy
            Aws::Imagebuilder::Endpoints::PutContainerRecipePolicy.build(context)
          when :put_image_policy
            Aws::Imagebuilder::Endpoints::PutImagePolicy.build(context)
          when :put_image_recipe_policy
            Aws::Imagebuilder::Endpoints::PutImageRecipePolicy.build(context)
          when :start_image_pipeline_execution
            Aws::Imagebuilder::Endpoints::StartImagePipelineExecution.build(context)
          when :tag_resource
            Aws::Imagebuilder::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Imagebuilder::Endpoints::UntagResource.build(context)
          when :update_distribution_configuration
            Aws::Imagebuilder::Endpoints::UpdateDistributionConfiguration.build(context)
          when :update_image_pipeline
            Aws::Imagebuilder::Endpoints::UpdateImagePipeline.build(context)
          when :update_infrastructure_configuration
            Aws::Imagebuilder::Endpoints::UpdateInfrastructureConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

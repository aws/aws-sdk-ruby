# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ApiGatewayV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ApiGatewayV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ApiGatewayV2::EndpointParameters`'
      ) do |cfg|
        Aws::ApiGatewayV2::EndpointProvider.new
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
          when :create_api
            Aws::ApiGatewayV2::Endpoints::CreateApi.build(context)
          when :create_api_mapping
            Aws::ApiGatewayV2::Endpoints::CreateApiMapping.build(context)
          when :create_authorizer
            Aws::ApiGatewayV2::Endpoints::CreateAuthorizer.build(context)
          when :create_deployment
            Aws::ApiGatewayV2::Endpoints::CreateDeployment.build(context)
          when :create_domain_name
            Aws::ApiGatewayV2::Endpoints::CreateDomainName.build(context)
          when :create_integration
            Aws::ApiGatewayV2::Endpoints::CreateIntegration.build(context)
          when :create_integration_response
            Aws::ApiGatewayV2::Endpoints::CreateIntegrationResponse.build(context)
          when :create_model
            Aws::ApiGatewayV2::Endpoints::CreateModel.build(context)
          when :create_route
            Aws::ApiGatewayV2::Endpoints::CreateRoute.build(context)
          when :create_route_response
            Aws::ApiGatewayV2::Endpoints::CreateRouteResponse.build(context)
          when :create_stage
            Aws::ApiGatewayV2::Endpoints::CreateStage.build(context)
          when :create_vpc_link
            Aws::ApiGatewayV2::Endpoints::CreateVpcLink.build(context)
          when :delete_access_log_settings
            Aws::ApiGatewayV2::Endpoints::DeleteAccessLogSettings.build(context)
          when :delete_api
            Aws::ApiGatewayV2::Endpoints::DeleteApi.build(context)
          when :delete_api_mapping
            Aws::ApiGatewayV2::Endpoints::DeleteApiMapping.build(context)
          when :delete_authorizer
            Aws::ApiGatewayV2::Endpoints::DeleteAuthorizer.build(context)
          when :delete_cors_configuration
            Aws::ApiGatewayV2::Endpoints::DeleteCorsConfiguration.build(context)
          when :delete_deployment
            Aws::ApiGatewayV2::Endpoints::DeleteDeployment.build(context)
          when :delete_domain_name
            Aws::ApiGatewayV2::Endpoints::DeleteDomainName.build(context)
          when :delete_integration
            Aws::ApiGatewayV2::Endpoints::DeleteIntegration.build(context)
          when :delete_integration_response
            Aws::ApiGatewayV2::Endpoints::DeleteIntegrationResponse.build(context)
          when :delete_model
            Aws::ApiGatewayV2::Endpoints::DeleteModel.build(context)
          when :delete_route
            Aws::ApiGatewayV2::Endpoints::DeleteRoute.build(context)
          when :delete_route_request_parameter
            Aws::ApiGatewayV2::Endpoints::DeleteRouteRequestParameter.build(context)
          when :delete_route_response
            Aws::ApiGatewayV2::Endpoints::DeleteRouteResponse.build(context)
          when :delete_route_settings
            Aws::ApiGatewayV2::Endpoints::DeleteRouteSettings.build(context)
          when :delete_stage
            Aws::ApiGatewayV2::Endpoints::DeleteStage.build(context)
          when :delete_vpc_link
            Aws::ApiGatewayV2::Endpoints::DeleteVpcLink.build(context)
          when :export_api
            Aws::ApiGatewayV2::Endpoints::ExportApi.build(context)
          when :reset_authorizers_cache
            Aws::ApiGatewayV2::Endpoints::ResetAuthorizersCache.build(context)
          when :get_api
            Aws::ApiGatewayV2::Endpoints::GetApi.build(context)
          when :get_api_mapping
            Aws::ApiGatewayV2::Endpoints::GetApiMapping.build(context)
          when :get_api_mappings
            Aws::ApiGatewayV2::Endpoints::GetApiMappings.build(context)
          when :get_apis
            Aws::ApiGatewayV2::Endpoints::GetApis.build(context)
          when :get_authorizer
            Aws::ApiGatewayV2::Endpoints::GetAuthorizer.build(context)
          when :get_authorizers
            Aws::ApiGatewayV2::Endpoints::GetAuthorizers.build(context)
          when :get_deployment
            Aws::ApiGatewayV2::Endpoints::GetDeployment.build(context)
          when :get_deployments
            Aws::ApiGatewayV2::Endpoints::GetDeployments.build(context)
          when :get_domain_name
            Aws::ApiGatewayV2::Endpoints::GetDomainName.build(context)
          when :get_domain_names
            Aws::ApiGatewayV2::Endpoints::GetDomainNames.build(context)
          when :get_integration
            Aws::ApiGatewayV2::Endpoints::GetIntegration.build(context)
          when :get_integration_response
            Aws::ApiGatewayV2::Endpoints::GetIntegrationResponse.build(context)
          when :get_integration_responses
            Aws::ApiGatewayV2::Endpoints::GetIntegrationResponses.build(context)
          when :get_integrations
            Aws::ApiGatewayV2::Endpoints::GetIntegrations.build(context)
          when :get_model
            Aws::ApiGatewayV2::Endpoints::GetModel.build(context)
          when :get_model_template
            Aws::ApiGatewayV2::Endpoints::GetModelTemplate.build(context)
          when :get_models
            Aws::ApiGatewayV2::Endpoints::GetModels.build(context)
          when :get_route
            Aws::ApiGatewayV2::Endpoints::GetRoute.build(context)
          when :get_route_response
            Aws::ApiGatewayV2::Endpoints::GetRouteResponse.build(context)
          when :get_route_responses
            Aws::ApiGatewayV2::Endpoints::GetRouteResponses.build(context)
          when :get_routes
            Aws::ApiGatewayV2::Endpoints::GetRoutes.build(context)
          when :get_stage
            Aws::ApiGatewayV2::Endpoints::GetStage.build(context)
          when :get_stages
            Aws::ApiGatewayV2::Endpoints::GetStages.build(context)
          when :get_tags
            Aws::ApiGatewayV2::Endpoints::GetTags.build(context)
          when :get_vpc_link
            Aws::ApiGatewayV2::Endpoints::GetVpcLink.build(context)
          when :get_vpc_links
            Aws::ApiGatewayV2::Endpoints::GetVpcLinks.build(context)
          when :import_api
            Aws::ApiGatewayV2::Endpoints::ImportApi.build(context)
          when :reimport_api
            Aws::ApiGatewayV2::Endpoints::ReimportApi.build(context)
          when :tag_resource
            Aws::ApiGatewayV2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ApiGatewayV2::Endpoints::UntagResource.build(context)
          when :update_api
            Aws::ApiGatewayV2::Endpoints::UpdateApi.build(context)
          when :update_api_mapping
            Aws::ApiGatewayV2::Endpoints::UpdateApiMapping.build(context)
          when :update_authorizer
            Aws::ApiGatewayV2::Endpoints::UpdateAuthorizer.build(context)
          when :update_deployment
            Aws::ApiGatewayV2::Endpoints::UpdateDeployment.build(context)
          when :update_domain_name
            Aws::ApiGatewayV2::Endpoints::UpdateDomainName.build(context)
          when :update_integration
            Aws::ApiGatewayV2::Endpoints::UpdateIntegration.build(context)
          when :update_integration_response
            Aws::ApiGatewayV2::Endpoints::UpdateIntegrationResponse.build(context)
          when :update_model
            Aws::ApiGatewayV2::Endpoints::UpdateModel.build(context)
          when :update_route
            Aws::ApiGatewayV2::Endpoints::UpdateRoute.build(context)
          when :update_route_response
            Aws::ApiGatewayV2::Endpoints::UpdateRouteResponse.build(context)
          when :update_stage
            Aws::ApiGatewayV2::Endpoints::UpdateStage.build(context)
          when :update_vpc_link
            Aws::ApiGatewayV2::Endpoints::UpdateVpcLink.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

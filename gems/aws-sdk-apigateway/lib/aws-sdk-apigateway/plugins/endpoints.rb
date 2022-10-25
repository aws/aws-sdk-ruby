# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::APIGateway
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::APIGateway::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::APIGateway::EndpointParameters`'
      ) do |cfg|
        Aws::APIGateway::EndpointProvider.new
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
          when :create_api_key
            Aws::APIGateway::Endpoints::CreateApiKey.build(context)
          when :create_authorizer
            Aws::APIGateway::Endpoints::CreateAuthorizer.build(context)
          when :create_base_path_mapping
            Aws::APIGateway::Endpoints::CreateBasePathMapping.build(context)
          when :create_deployment
            Aws::APIGateway::Endpoints::CreateDeployment.build(context)
          when :create_documentation_part
            Aws::APIGateway::Endpoints::CreateDocumentationPart.build(context)
          when :create_documentation_version
            Aws::APIGateway::Endpoints::CreateDocumentationVersion.build(context)
          when :create_domain_name
            Aws::APIGateway::Endpoints::CreateDomainName.build(context)
          when :create_model
            Aws::APIGateway::Endpoints::CreateModel.build(context)
          when :create_request_validator
            Aws::APIGateway::Endpoints::CreateRequestValidator.build(context)
          when :create_resource
            Aws::APIGateway::Endpoints::CreateResource.build(context)
          when :create_rest_api
            Aws::APIGateway::Endpoints::CreateRestApi.build(context)
          when :create_stage
            Aws::APIGateway::Endpoints::CreateStage.build(context)
          when :create_usage_plan
            Aws::APIGateway::Endpoints::CreateUsagePlan.build(context)
          when :create_usage_plan_key
            Aws::APIGateway::Endpoints::CreateUsagePlanKey.build(context)
          when :create_vpc_link
            Aws::APIGateway::Endpoints::CreateVpcLink.build(context)
          when :delete_api_key
            Aws::APIGateway::Endpoints::DeleteApiKey.build(context)
          when :delete_authorizer
            Aws::APIGateway::Endpoints::DeleteAuthorizer.build(context)
          when :delete_base_path_mapping
            Aws::APIGateway::Endpoints::DeleteBasePathMapping.build(context)
          when :delete_client_certificate
            Aws::APIGateway::Endpoints::DeleteClientCertificate.build(context)
          when :delete_deployment
            Aws::APIGateway::Endpoints::DeleteDeployment.build(context)
          when :delete_documentation_part
            Aws::APIGateway::Endpoints::DeleteDocumentationPart.build(context)
          when :delete_documentation_version
            Aws::APIGateway::Endpoints::DeleteDocumentationVersion.build(context)
          when :delete_domain_name
            Aws::APIGateway::Endpoints::DeleteDomainName.build(context)
          when :delete_gateway_response
            Aws::APIGateway::Endpoints::DeleteGatewayResponse.build(context)
          when :delete_integration
            Aws::APIGateway::Endpoints::DeleteIntegration.build(context)
          when :delete_integration_response
            Aws::APIGateway::Endpoints::DeleteIntegrationResponse.build(context)
          when :delete_method
            Aws::APIGateway::Endpoints::DeleteMethod.build(context)
          when :delete_method_response
            Aws::APIGateway::Endpoints::DeleteMethodResponse.build(context)
          when :delete_model
            Aws::APIGateway::Endpoints::DeleteModel.build(context)
          when :delete_request_validator
            Aws::APIGateway::Endpoints::DeleteRequestValidator.build(context)
          when :delete_resource
            Aws::APIGateway::Endpoints::DeleteResource.build(context)
          when :delete_rest_api
            Aws::APIGateway::Endpoints::DeleteRestApi.build(context)
          when :delete_stage
            Aws::APIGateway::Endpoints::DeleteStage.build(context)
          when :delete_usage_plan
            Aws::APIGateway::Endpoints::DeleteUsagePlan.build(context)
          when :delete_usage_plan_key
            Aws::APIGateway::Endpoints::DeleteUsagePlanKey.build(context)
          when :delete_vpc_link
            Aws::APIGateway::Endpoints::DeleteVpcLink.build(context)
          when :flush_stage_authorizers_cache
            Aws::APIGateway::Endpoints::FlushStageAuthorizersCache.build(context)
          when :flush_stage_cache
            Aws::APIGateway::Endpoints::FlushStageCache.build(context)
          when :generate_client_certificate
            Aws::APIGateway::Endpoints::GenerateClientCertificate.build(context)
          when :get_account
            Aws::APIGateway::Endpoints::GetAccount.build(context)
          when :get_api_key
            Aws::APIGateway::Endpoints::GetApiKey.build(context)
          when :get_api_keys
            Aws::APIGateway::Endpoints::GetApiKeys.build(context)
          when :get_authorizer
            Aws::APIGateway::Endpoints::GetAuthorizer.build(context)
          when :get_authorizers
            Aws::APIGateway::Endpoints::GetAuthorizers.build(context)
          when :get_base_path_mapping
            Aws::APIGateway::Endpoints::GetBasePathMapping.build(context)
          when :get_base_path_mappings
            Aws::APIGateway::Endpoints::GetBasePathMappings.build(context)
          when :get_client_certificate
            Aws::APIGateway::Endpoints::GetClientCertificate.build(context)
          when :get_client_certificates
            Aws::APIGateway::Endpoints::GetClientCertificates.build(context)
          when :get_deployment
            Aws::APIGateway::Endpoints::GetDeployment.build(context)
          when :get_deployments
            Aws::APIGateway::Endpoints::GetDeployments.build(context)
          when :get_documentation_part
            Aws::APIGateway::Endpoints::GetDocumentationPart.build(context)
          when :get_documentation_parts
            Aws::APIGateway::Endpoints::GetDocumentationParts.build(context)
          when :get_documentation_version
            Aws::APIGateway::Endpoints::GetDocumentationVersion.build(context)
          when :get_documentation_versions
            Aws::APIGateway::Endpoints::GetDocumentationVersions.build(context)
          when :get_domain_name
            Aws::APIGateway::Endpoints::GetDomainName.build(context)
          when :get_domain_names
            Aws::APIGateway::Endpoints::GetDomainNames.build(context)
          when :get_export
            Aws::APIGateway::Endpoints::GetExport.build(context)
          when :get_gateway_response
            Aws::APIGateway::Endpoints::GetGatewayResponse.build(context)
          when :get_gateway_responses
            Aws::APIGateway::Endpoints::GetGatewayResponses.build(context)
          when :get_integration
            Aws::APIGateway::Endpoints::GetIntegration.build(context)
          when :get_integration_response
            Aws::APIGateway::Endpoints::GetIntegrationResponse.build(context)
          when :get_method
            Aws::APIGateway::Endpoints::GetMethod.build(context)
          when :get_method_response
            Aws::APIGateway::Endpoints::GetMethodResponse.build(context)
          when :get_model
            Aws::APIGateway::Endpoints::GetModel.build(context)
          when :get_model_template
            Aws::APIGateway::Endpoints::GetModelTemplate.build(context)
          when :get_models
            Aws::APIGateway::Endpoints::GetModels.build(context)
          when :get_request_validator
            Aws::APIGateway::Endpoints::GetRequestValidator.build(context)
          when :get_request_validators
            Aws::APIGateway::Endpoints::GetRequestValidators.build(context)
          when :get_resource
            Aws::APIGateway::Endpoints::GetResource.build(context)
          when :get_resources
            Aws::APIGateway::Endpoints::GetResources.build(context)
          when :get_rest_api
            Aws::APIGateway::Endpoints::GetRestApi.build(context)
          when :get_rest_apis
            Aws::APIGateway::Endpoints::GetRestApis.build(context)
          when :get_sdk
            Aws::APIGateway::Endpoints::GetSdk.build(context)
          when :get_sdk_type
            Aws::APIGateway::Endpoints::GetSdkType.build(context)
          when :get_sdk_types
            Aws::APIGateway::Endpoints::GetSdkTypes.build(context)
          when :get_stage
            Aws::APIGateway::Endpoints::GetStage.build(context)
          when :get_stages
            Aws::APIGateway::Endpoints::GetStages.build(context)
          when :get_tags
            Aws::APIGateway::Endpoints::GetTags.build(context)
          when :get_usage
            Aws::APIGateway::Endpoints::GetUsage.build(context)
          when :get_usage_plan
            Aws::APIGateway::Endpoints::GetUsagePlan.build(context)
          when :get_usage_plan_key
            Aws::APIGateway::Endpoints::GetUsagePlanKey.build(context)
          when :get_usage_plan_keys
            Aws::APIGateway::Endpoints::GetUsagePlanKeys.build(context)
          when :get_usage_plans
            Aws::APIGateway::Endpoints::GetUsagePlans.build(context)
          when :get_vpc_link
            Aws::APIGateway::Endpoints::GetVpcLink.build(context)
          when :get_vpc_links
            Aws::APIGateway::Endpoints::GetVpcLinks.build(context)
          when :import_api_keys
            Aws::APIGateway::Endpoints::ImportApiKeys.build(context)
          when :import_documentation_parts
            Aws::APIGateway::Endpoints::ImportDocumentationParts.build(context)
          when :import_rest_api
            Aws::APIGateway::Endpoints::ImportRestApi.build(context)
          when :put_gateway_response
            Aws::APIGateway::Endpoints::PutGatewayResponse.build(context)
          when :put_integration
            Aws::APIGateway::Endpoints::PutIntegration.build(context)
          when :put_integration_response
            Aws::APIGateway::Endpoints::PutIntegrationResponse.build(context)
          when :put_method
            Aws::APIGateway::Endpoints::PutMethod.build(context)
          when :put_method_response
            Aws::APIGateway::Endpoints::PutMethodResponse.build(context)
          when :put_rest_api
            Aws::APIGateway::Endpoints::PutRestApi.build(context)
          when :tag_resource
            Aws::APIGateway::Endpoints::TagResource.build(context)
          when :test_invoke_authorizer
            Aws::APIGateway::Endpoints::TestInvokeAuthorizer.build(context)
          when :test_invoke_method
            Aws::APIGateway::Endpoints::TestInvokeMethod.build(context)
          when :untag_resource
            Aws::APIGateway::Endpoints::UntagResource.build(context)
          when :update_account
            Aws::APIGateway::Endpoints::UpdateAccount.build(context)
          when :update_api_key
            Aws::APIGateway::Endpoints::UpdateApiKey.build(context)
          when :update_authorizer
            Aws::APIGateway::Endpoints::UpdateAuthorizer.build(context)
          when :update_base_path_mapping
            Aws::APIGateway::Endpoints::UpdateBasePathMapping.build(context)
          when :update_client_certificate
            Aws::APIGateway::Endpoints::UpdateClientCertificate.build(context)
          when :update_deployment
            Aws::APIGateway::Endpoints::UpdateDeployment.build(context)
          when :update_documentation_part
            Aws::APIGateway::Endpoints::UpdateDocumentationPart.build(context)
          when :update_documentation_version
            Aws::APIGateway::Endpoints::UpdateDocumentationVersion.build(context)
          when :update_domain_name
            Aws::APIGateway::Endpoints::UpdateDomainName.build(context)
          when :update_gateway_response
            Aws::APIGateway::Endpoints::UpdateGatewayResponse.build(context)
          when :update_integration
            Aws::APIGateway::Endpoints::UpdateIntegration.build(context)
          when :update_integration_response
            Aws::APIGateway::Endpoints::UpdateIntegrationResponse.build(context)
          when :update_method
            Aws::APIGateway::Endpoints::UpdateMethod.build(context)
          when :update_method_response
            Aws::APIGateway::Endpoints::UpdateMethodResponse.build(context)
          when :update_model
            Aws::APIGateway::Endpoints::UpdateModel.build(context)
          when :update_request_validator
            Aws::APIGateway::Endpoints::UpdateRequestValidator.build(context)
          when :update_resource
            Aws::APIGateway::Endpoints::UpdateResource.build(context)
          when :update_rest_api
            Aws::APIGateway::Endpoints::UpdateRestApi.build(context)
          when :update_stage
            Aws::APIGateway::Endpoints::UpdateStage.build(context)
          when :update_usage
            Aws::APIGateway::Endpoints::UpdateUsage.build(context)
          when :update_usage_plan
            Aws::APIGateway::Endpoints::UpdateUsagePlan.build(context)
          when :update_vpc_link
            Aws::APIGateway::Endpoints::UpdateVpcLink.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Lambda
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Lambda::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Lambda::EndpointParameters`'
      ) do |cfg|
        Aws::Lambda::EndpointProvider.new
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
          when :add_layer_version_permission
            Aws::Lambda::Endpoints::AddLayerVersionPermission.build(context)
          when :add_permission
            Aws::Lambda::Endpoints::AddPermission.build(context)
          when :create_alias
            Aws::Lambda::Endpoints::CreateAlias.build(context)
          when :create_code_signing_config
            Aws::Lambda::Endpoints::CreateCodeSigningConfig.build(context)
          when :create_event_source_mapping
            Aws::Lambda::Endpoints::CreateEventSourceMapping.build(context)
          when :create_function
            Aws::Lambda::Endpoints::CreateFunction.build(context)
          when :create_function_url_config
            Aws::Lambda::Endpoints::CreateFunctionUrlConfig.build(context)
          when :delete_alias
            Aws::Lambda::Endpoints::DeleteAlias.build(context)
          when :delete_code_signing_config
            Aws::Lambda::Endpoints::DeleteCodeSigningConfig.build(context)
          when :delete_event_source_mapping
            Aws::Lambda::Endpoints::DeleteEventSourceMapping.build(context)
          when :delete_function
            Aws::Lambda::Endpoints::DeleteFunction.build(context)
          when :delete_function_code_signing_config
            Aws::Lambda::Endpoints::DeleteFunctionCodeSigningConfig.build(context)
          when :delete_function_concurrency
            Aws::Lambda::Endpoints::DeleteFunctionConcurrency.build(context)
          when :delete_function_event_invoke_config
            Aws::Lambda::Endpoints::DeleteFunctionEventInvokeConfig.build(context)
          when :delete_function_url_config
            Aws::Lambda::Endpoints::DeleteFunctionUrlConfig.build(context)
          when :delete_layer_version
            Aws::Lambda::Endpoints::DeleteLayerVersion.build(context)
          when :delete_provisioned_concurrency_config
            Aws::Lambda::Endpoints::DeleteProvisionedConcurrencyConfig.build(context)
          when :get_account_settings
            Aws::Lambda::Endpoints::GetAccountSettings.build(context)
          when :get_alias
            Aws::Lambda::Endpoints::GetAlias.build(context)
          when :get_code_signing_config
            Aws::Lambda::Endpoints::GetCodeSigningConfig.build(context)
          when :get_event_source_mapping
            Aws::Lambda::Endpoints::GetEventSourceMapping.build(context)
          when :get_function
            Aws::Lambda::Endpoints::GetFunction.build(context)
          when :get_function_code_signing_config
            Aws::Lambda::Endpoints::GetFunctionCodeSigningConfig.build(context)
          when :get_function_concurrency
            Aws::Lambda::Endpoints::GetFunctionConcurrency.build(context)
          when :get_function_configuration
            Aws::Lambda::Endpoints::GetFunctionConfiguration.build(context)
          when :get_function_event_invoke_config
            Aws::Lambda::Endpoints::GetFunctionEventInvokeConfig.build(context)
          when :get_function_url_config
            Aws::Lambda::Endpoints::GetFunctionUrlConfig.build(context)
          when :get_layer_version
            Aws::Lambda::Endpoints::GetLayerVersion.build(context)
          when :get_layer_version_by_arn
            Aws::Lambda::Endpoints::GetLayerVersionByArn.build(context)
          when :get_layer_version_policy
            Aws::Lambda::Endpoints::GetLayerVersionPolicy.build(context)
          when :get_policy
            Aws::Lambda::Endpoints::GetPolicy.build(context)
          when :get_provisioned_concurrency_config
            Aws::Lambda::Endpoints::GetProvisionedConcurrencyConfig.build(context)
          when :get_runtime_management_config
            Aws::Lambda::Endpoints::GetRuntimeManagementConfig.build(context)
          when :invoke
            Aws::Lambda::Endpoints::Invoke.build(context)
          when :invoke_async
            Aws::Lambda::Endpoints::InvokeAsync.build(context)
          when :invoke_with_response_stream
            Aws::Lambda::Endpoints::InvokeWithResponseStream.build(context)
          when :list_aliases
            Aws::Lambda::Endpoints::ListAliases.build(context)
          when :list_code_signing_configs
            Aws::Lambda::Endpoints::ListCodeSigningConfigs.build(context)
          when :list_event_source_mappings
            Aws::Lambda::Endpoints::ListEventSourceMappings.build(context)
          when :list_function_event_invoke_configs
            Aws::Lambda::Endpoints::ListFunctionEventInvokeConfigs.build(context)
          when :list_function_url_configs
            Aws::Lambda::Endpoints::ListFunctionUrlConfigs.build(context)
          when :list_functions
            Aws::Lambda::Endpoints::ListFunctions.build(context)
          when :list_functions_by_code_signing_config
            Aws::Lambda::Endpoints::ListFunctionsByCodeSigningConfig.build(context)
          when :list_layer_versions
            Aws::Lambda::Endpoints::ListLayerVersions.build(context)
          when :list_layers
            Aws::Lambda::Endpoints::ListLayers.build(context)
          when :list_provisioned_concurrency_configs
            Aws::Lambda::Endpoints::ListProvisionedConcurrencyConfigs.build(context)
          when :list_tags
            Aws::Lambda::Endpoints::ListTags.build(context)
          when :list_versions_by_function
            Aws::Lambda::Endpoints::ListVersionsByFunction.build(context)
          when :publish_layer_version
            Aws::Lambda::Endpoints::PublishLayerVersion.build(context)
          when :publish_version
            Aws::Lambda::Endpoints::PublishVersion.build(context)
          when :put_function_code_signing_config
            Aws::Lambda::Endpoints::PutFunctionCodeSigningConfig.build(context)
          when :put_function_concurrency
            Aws::Lambda::Endpoints::PutFunctionConcurrency.build(context)
          when :put_function_event_invoke_config
            Aws::Lambda::Endpoints::PutFunctionEventInvokeConfig.build(context)
          when :put_provisioned_concurrency_config
            Aws::Lambda::Endpoints::PutProvisionedConcurrencyConfig.build(context)
          when :put_runtime_management_config
            Aws::Lambda::Endpoints::PutRuntimeManagementConfig.build(context)
          when :remove_layer_version_permission
            Aws::Lambda::Endpoints::RemoveLayerVersionPermission.build(context)
          when :remove_permission
            Aws::Lambda::Endpoints::RemovePermission.build(context)
          when :tag_resource
            Aws::Lambda::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Lambda::Endpoints::UntagResource.build(context)
          when :update_alias
            Aws::Lambda::Endpoints::UpdateAlias.build(context)
          when :update_code_signing_config
            Aws::Lambda::Endpoints::UpdateCodeSigningConfig.build(context)
          when :update_event_source_mapping
            Aws::Lambda::Endpoints::UpdateEventSourceMapping.build(context)
          when :update_function_code
            Aws::Lambda::Endpoints::UpdateFunctionCode.build(context)
          when :update_function_configuration
            Aws::Lambda::Endpoints::UpdateFunctionConfiguration.build(context)
          when :update_function_event_invoke_config
            Aws::Lambda::Endpoints::UpdateFunctionEventInvokeConfig.build(context)
          when :update_function_url_config
            Aws::Lambda::Endpoints::UpdateFunctionUrlConfig.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

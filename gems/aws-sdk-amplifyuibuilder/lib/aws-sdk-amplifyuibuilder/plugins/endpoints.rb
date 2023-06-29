# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AmplifyUIBuilder
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AmplifyUIBuilder::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AmplifyUIBuilder::EndpointParameters`'
      ) do |cfg|
        Aws::AmplifyUIBuilder::EndpointProvider.new
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
          when :create_component
            Aws::AmplifyUIBuilder::Endpoints::CreateComponent.build(context)
          when :create_form
            Aws::AmplifyUIBuilder::Endpoints::CreateForm.build(context)
          when :create_theme
            Aws::AmplifyUIBuilder::Endpoints::CreateTheme.build(context)
          when :delete_component
            Aws::AmplifyUIBuilder::Endpoints::DeleteComponent.build(context)
          when :delete_form
            Aws::AmplifyUIBuilder::Endpoints::DeleteForm.build(context)
          when :delete_theme
            Aws::AmplifyUIBuilder::Endpoints::DeleteTheme.build(context)
          when :exchange_code_for_token
            Aws::AmplifyUIBuilder::Endpoints::ExchangeCodeForToken.build(context)
          when :export_components
            Aws::AmplifyUIBuilder::Endpoints::ExportComponents.build(context)
          when :export_forms
            Aws::AmplifyUIBuilder::Endpoints::ExportForms.build(context)
          when :export_themes
            Aws::AmplifyUIBuilder::Endpoints::ExportThemes.build(context)
          when :get_codegen_job
            Aws::AmplifyUIBuilder::Endpoints::GetCodegenJob.build(context)
          when :get_component
            Aws::AmplifyUIBuilder::Endpoints::GetComponent.build(context)
          when :get_form
            Aws::AmplifyUIBuilder::Endpoints::GetForm.build(context)
          when :get_metadata
            Aws::AmplifyUIBuilder::Endpoints::GetMetadata.build(context)
          when :get_theme
            Aws::AmplifyUIBuilder::Endpoints::GetTheme.build(context)
          when :list_codegen_jobs
            Aws::AmplifyUIBuilder::Endpoints::ListCodegenJobs.build(context)
          when :list_components
            Aws::AmplifyUIBuilder::Endpoints::ListComponents.build(context)
          when :list_forms
            Aws::AmplifyUIBuilder::Endpoints::ListForms.build(context)
          when :list_themes
            Aws::AmplifyUIBuilder::Endpoints::ListThemes.build(context)
          when :put_metadata_flag
            Aws::AmplifyUIBuilder::Endpoints::PutMetadataFlag.build(context)
          when :refresh_token
            Aws::AmplifyUIBuilder::Endpoints::RefreshToken.build(context)
          when :start_codegen_job
            Aws::AmplifyUIBuilder::Endpoints::StartCodegenJob.build(context)
          when :update_component
            Aws::AmplifyUIBuilder::Endpoints::UpdateComponent.build(context)
          when :update_form
            Aws::AmplifyUIBuilder::Endpoints::UpdateForm.build(context)
          when :update_theme
            Aws::AmplifyUIBuilder::Endpoints::UpdateTheme.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

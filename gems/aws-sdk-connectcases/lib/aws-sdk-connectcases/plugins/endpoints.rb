# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectCases
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ConnectCases::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ConnectCases::EndpointParameters`'
      ) do |cfg|
        Aws::ConnectCases::EndpointProvider.new
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
          when :batch_get_field
            Aws::ConnectCases::Endpoints::BatchGetField.build(context)
          when :batch_put_field_options
            Aws::ConnectCases::Endpoints::BatchPutFieldOptions.build(context)
          when :create_case
            Aws::ConnectCases::Endpoints::CreateCase.build(context)
          when :create_domain
            Aws::ConnectCases::Endpoints::CreateDomain.build(context)
          when :create_field
            Aws::ConnectCases::Endpoints::CreateField.build(context)
          when :create_layout
            Aws::ConnectCases::Endpoints::CreateLayout.build(context)
          when :create_related_item
            Aws::ConnectCases::Endpoints::CreateRelatedItem.build(context)
          when :create_template
            Aws::ConnectCases::Endpoints::CreateTemplate.build(context)
          when :delete_domain
            Aws::ConnectCases::Endpoints::DeleteDomain.build(context)
          when :get_case
            Aws::ConnectCases::Endpoints::GetCase.build(context)
          when :get_case_event_configuration
            Aws::ConnectCases::Endpoints::GetCaseEventConfiguration.build(context)
          when :get_domain
            Aws::ConnectCases::Endpoints::GetDomain.build(context)
          when :get_layout
            Aws::ConnectCases::Endpoints::GetLayout.build(context)
          when :get_template
            Aws::ConnectCases::Endpoints::GetTemplate.build(context)
          when :list_cases_for_contact
            Aws::ConnectCases::Endpoints::ListCasesForContact.build(context)
          when :list_domains
            Aws::ConnectCases::Endpoints::ListDomains.build(context)
          when :list_field_options
            Aws::ConnectCases::Endpoints::ListFieldOptions.build(context)
          when :list_fields
            Aws::ConnectCases::Endpoints::ListFields.build(context)
          when :list_layouts
            Aws::ConnectCases::Endpoints::ListLayouts.build(context)
          when :list_tags_for_resource
            Aws::ConnectCases::Endpoints::ListTagsForResource.build(context)
          when :list_templates
            Aws::ConnectCases::Endpoints::ListTemplates.build(context)
          when :put_case_event_configuration
            Aws::ConnectCases::Endpoints::PutCaseEventConfiguration.build(context)
          when :search_cases
            Aws::ConnectCases::Endpoints::SearchCases.build(context)
          when :search_related_items
            Aws::ConnectCases::Endpoints::SearchRelatedItems.build(context)
          when :tag_resource
            Aws::ConnectCases::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ConnectCases::Endpoints::UntagResource.build(context)
          when :update_case
            Aws::ConnectCases::Endpoints::UpdateCase.build(context)
          when :update_field
            Aws::ConnectCases::Endpoints::UpdateField.build(context)
          when :update_layout
            Aws::ConnectCases::Endpoints::UpdateLayout.build(context)
          when :update_template
            Aws::ConnectCases::Endpoints::UpdateTemplate.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

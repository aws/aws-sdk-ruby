# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::QApps
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::QApps::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::QApps::EndpointParameters`'
      ) do |cfg|
        Aws::QApps::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :associate_library_item_review
            Aws::QApps::Endpoints::AssociateLibraryItemReview.build(context)
          when :associate_q_app_with_user
            Aws::QApps::Endpoints::AssociateQAppWithUser.build(context)
          when :create_library_item
            Aws::QApps::Endpoints::CreateLibraryItem.build(context)
          when :create_q_app
            Aws::QApps::Endpoints::CreateQApp.build(context)
          when :delete_library_item
            Aws::QApps::Endpoints::DeleteLibraryItem.build(context)
          when :delete_q_app
            Aws::QApps::Endpoints::DeleteQApp.build(context)
          when :disassociate_library_item_review
            Aws::QApps::Endpoints::DisassociateLibraryItemReview.build(context)
          when :disassociate_q_app_from_user
            Aws::QApps::Endpoints::DisassociateQAppFromUser.build(context)
          when :get_library_item
            Aws::QApps::Endpoints::GetLibraryItem.build(context)
          when :get_q_app
            Aws::QApps::Endpoints::GetQApp.build(context)
          when :get_q_app_session
            Aws::QApps::Endpoints::GetQAppSession.build(context)
          when :import_document
            Aws::QApps::Endpoints::ImportDocument.build(context)
          when :list_library_items
            Aws::QApps::Endpoints::ListLibraryItems.build(context)
          when :list_q_apps
            Aws::QApps::Endpoints::ListQApps.build(context)
          when :list_tags_for_resource
            Aws::QApps::Endpoints::ListTagsForResource.build(context)
          when :predict_q_app
            Aws::QApps::Endpoints::PredictQApp.build(context)
          when :start_q_app_session
            Aws::QApps::Endpoints::StartQAppSession.build(context)
          when :stop_q_app_session
            Aws::QApps::Endpoints::StopQAppSession.build(context)
          when :tag_resource
            Aws::QApps::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::QApps::Endpoints::UntagResource.build(context)
          when :update_library_item
            Aws::QApps::Endpoints::UpdateLibraryItem.build(context)
          when :update_q_app
            Aws::QApps::Endpoints::UpdateQApp.build(context)
          when :update_q_app_session
            Aws::QApps::Endpoints::UpdateQAppSession.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

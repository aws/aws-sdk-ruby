# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Ivschat
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Ivschat::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Ivschat::EndpointParameters`'
      ) do |cfg|
        Aws::Ivschat::EndpointProvider.new
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
          when :create_chat_token
            Aws::Ivschat::Endpoints::CreateChatToken.build(context)
          when :create_logging_configuration
            Aws::Ivschat::Endpoints::CreateLoggingConfiguration.build(context)
          when :create_room
            Aws::Ivschat::Endpoints::CreateRoom.build(context)
          when :delete_logging_configuration
            Aws::Ivschat::Endpoints::DeleteLoggingConfiguration.build(context)
          when :delete_message
            Aws::Ivschat::Endpoints::DeleteMessage.build(context)
          when :delete_room
            Aws::Ivschat::Endpoints::DeleteRoom.build(context)
          when :disconnect_user
            Aws::Ivschat::Endpoints::DisconnectUser.build(context)
          when :get_logging_configuration
            Aws::Ivschat::Endpoints::GetLoggingConfiguration.build(context)
          when :get_room
            Aws::Ivschat::Endpoints::GetRoom.build(context)
          when :list_logging_configurations
            Aws::Ivschat::Endpoints::ListLoggingConfigurations.build(context)
          when :list_rooms
            Aws::Ivschat::Endpoints::ListRooms.build(context)
          when :list_tags_for_resource
            Aws::Ivschat::Endpoints::ListTagsForResource.build(context)
          when :send_event
            Aws::Ivschat::Endpoints::SendEvent.build(context)
          when :tag_resource
            Aws::Ivschat::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Ivschat::Endpoints::UntagResource.build(context)
          when :update_logging_configuration
            Aws::Ivschat::Endpoints::UpdateLoggingConfiguration.build(context)
          when :update_room
            Aws::Ivschat::Endpoints::UpdateRoom.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

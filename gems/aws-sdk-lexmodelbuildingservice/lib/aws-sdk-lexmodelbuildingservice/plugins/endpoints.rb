# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LexModelBuildingService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::LexModelBuildingService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::LexModelBuildingService::EndpointParameters`'
      ) do |cfg|
        Aws::LexModelBuildingService::EndpointProvider.new
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
          when :create_bot_version
            Aws::LexModelBuildingService::Endpoints::CreateBotVersion.build(context)
          when :create_intent_version
            Aws::LexModelBuildingService::Endpoints::CreateIntentVersion.build(context)
          when :create_slot_type_version
            Aws::LexModelBuildingService::Endpoints::CreateSlotTypeVersion.build(context)
          when :delete_bot
            Aws::LexModelBuildingService::Endpoints::DeleteBot.build(context)
          when :delete_bot_alias
            Aws::LexModelBuildingService::Endpoints::DeleteBotAlias.build(context)
          when :delete_bot_channel_association
            Aws::LexModelBuildingService::Endpoints::DeleteBotChannelAssociation.build(context)
          when :delete_bot_version
            Aws::LexModelBuildingService::Endpoints::DeleteBotVersion.build(context)
          when :delete_intent
            Aws::LexModelBuildingService::Endpoints::DeleteIntent.build(context)
          when :delete_intent_version
            Aws::LexModelBuildingService::Endpoints::DeleteIntentVersion.build(context)
          when :delete_slot_type
            Aws::LexModelBuildingService::Endpoints::DeleteSlotType.build(context)
          when :delete_slot_type_version
            Aws::LexModelBuildingService::Endpoints::DeleteSlotTypeVersion.build(context)
          when :delete_utterances
            Aws::LexModelBuildingService::Endpoints::DeleteUtterances.build(context)
          when :get_bot
            Aws::LexModelBuildingService::Endpoints::GetBot.build(context)
          when :get_bot_alias
            Aws::LexModelBuildingService::Endpoints::GetBotAlias.build(context)
          when :get_bot_aliases
            Aws::LexModelBuildingService::Endpoints::GetBotAliases.build(context)
          when :get_bot_channel_association
            Aws::LexModelBuildingService::Endpoints::GetBotChannelAssociation.build(context)
          when :get_bot_channel_associations
            Aws::LexModelBuildingService::Endpoints::GetBotChannelAssociations.build(context)
          when :get_bot_versions
            Aws::LexModelBuildingService::Endpoints::GetBotVersions.build(context)
          when :get_bots
            Aws::LexModelBuildingService::Endpoints::GetBots.build(context)
          when :get_builtin_intent
            Aws::LexModelBuildingService::Endpoints::GetBuiltinIntent.build(context)
          when :get_builtin_intents
            Aws::LexModelBuildingService::Endpoints::GetBuiltinIntents.build(context)
          when :get_builtin_slot_types
            Aws::LexModelBuildingService::Endpoints::GetBuiltinSlotTypes.build(context)
          when :get_export
            Aws::LexModelBuildingService::Endpoints::GetExport.build(context)
          when :get_import
            Aws::LexModelBuildingService::Endpoints::GetImport.build(context)
          when :get_intent
            Aws::LexModelBuildingService::Endpoints::GetIntent.build(context)
          when :get_intent_versions
            Aws::LexModelBuildingService::Endpoints::GetIntentVersions.build(context)
          when :get_intents
            Aws::LexModelBuildingService::Endpoints::GetIntents.build(context)
          when :get_migration
            Aws::LexModelBuildingService::Endpoints::GetMigration.build(context)
          when :get_migrations
            Aws::LexModelBuildingService::Endpoints::GetMigrations.build(context)
          when :get_slot_type
            Aws::LexModelBuildingService::Endpoints::GetSlotType.build(context)
          when :get_slot_type_versions
            Aws::LexModelBuildingService::Endpoints::GetSlotTypeVersions.build(context)
          when :get_slot_types
            Aws::LexModelBuildingService::Endpoints::GetSlotTypes.build(context)
          when :get_utterances_view
            Aws::LexModelBuildingService::Endpoints::GetUtterancesView.build(context)
          when :list_tags_for_resource
            Aws::LexModelBuildingService::Endpoints::ListTagsForResource.build(context)
          when :put_bot
            Aws::LexModelBuildingService::Endpoints::PutBot.build(context)
          when :put_bot_alias
            Aws::LexModelBuildingService::Endpoints::PutBotAlias.build(context)
          when :put_intent
            Aws::LexModelBuildingService::Endpoints::PutIntent.build(context)
          when :put_slot_type
            Aws::LexModelBuildingService::Endpoints::PutSlotType.build(context)
          when :start_import
            Aws::LexModelBuildingService::Endpoints::StartImport.build(context)
          when :start_migration
            Aws::LexModelBuildingService::Endpoints::StartMigration.build(context)
          when :tag_resource
            Aws::LexModelBuildingService::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::LexModelBuildingService::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

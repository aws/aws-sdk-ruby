# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GameSparks
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::GameSparks::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::GameSparks::EndpointParameters`'
      ) do |cfg|
        Aws::GameSparks::EndpointProvider.new
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
          when :create_game
            Aws::GameSparks::Endpoints::CreateGame.build(context)
          when :create_snapshot
            Aws::GameSparks::Endpoints::CreateSnapshot.build(context)
          when :create_stage
            Aws::GameSparks::Endpoints::CreateStage.build(context)
          when :delete_game
            Aws::GameSparks::Endpoints::DeleteGame.build(context)
          when :delete_stage
            Aws::GameSparks::Endpoints::DeleteStage.build(context)
          when :disconnect_player
            Aws::GameSparks::Endpoints::DisconnectPlayer.build(context)
          when :export_snapshot
            Aws::GameSparks::Endpoints::ExportSnapshot.build(context)
          when :get_extension
            Aws::GameSparks::Endpoints::GetExtension.build(context)
          when :get_extension_version
            Aws::GameSparks::Endpoints::GetExtensionVersion.build(context)
          when :get_game
            Aws::GameSparks::Endpoints::GetGame.build(context)
          when :get_game_configuration
            Aws::GameSparks::Endpoints::GetGameConfiguration.build(context)
          when :get_generated_code_job
            Aws::GameSparks::Endpoints::GetGeneratedCodeJob.build(context)
          when :get_player_connection_status
            Aws::GameSparks::Endpoints::GetPlayerConnectionStatus.build(context)
          when :get_snapshot
            Aws::GameSparks::Endpoints::GetSnapshot.build(context)
          when :get_stage
            Aws::GameSparks::Endpoints::GetStage.build(context)
          when :get_stage_deployment
            Aws::GameSparks::Endpoints::GetStageDeployment.build(context)
          when :import_game_configuration
            Aws::GameSparks::Endpoints::ImportGameConfiguration.build(context)
          when :list_extension_versions
            Aws::GameSparks::Endpoints::ListExtensionVersions.build(context)
          when :list_extensions
            Aws::GameSparks::Endpoints::ListExtensions.build(context)
          when :list_games
            Aws::GameSparks::Endpoints::ListGames.build(context)
          when :list_generated_code_jobs
            Aws::GameSparks::Endpoints::ListGeneratedCodeJobs.build(context)
          when :list_snapshots
            Aws::GameSparks::Endpoints::ListSnapshots.build(context)
          when :list_stage_deployments
            Aws::GameSparks::Endpoints::ListStageDeployments.build(context)
          when :list_stages
            Aws::GameSparks::Endpoints::ListStages.build(context)
          when :list_tags_for_resource
            Aws::GameSparks::Endpoints::ListTagsForResource.build(context)
          when :start_generated_code_job
            Aws::GameSparks::Endpoints::StartGeneratedCodeJob.build(context)
          when :start_stage_deployment
            Aws::GameSparks::Endpoints::StartStageDeployment.build(context)
          when :tag_resource
            Aws::GameSparks::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::GameSparks::Endpoints::UntagResource.build(context)
          when :update_game
            Aws::GameSparks::Endpoints::UpdateGame.build(context)
          when :update_game_configuration
            Aws::GameSparks::Endpoints::UpdateGameConfiguration.build(context)
          when :update_snapshot
            Aws::GameSparks::Endpoints::UpdateSnapshot.build(context)
          when :update_stage
            Aws::GameSparks::Endpoints::UpdateStage.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

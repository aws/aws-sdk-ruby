# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GameLift
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::GameLift::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::GameLift::EndpointParameters`'
      ) do |cfg|
        Aws::GameLift::EndpointProvider.new
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
          when :accept_match
            Aws::GameLift::Endpoints::AcceptMatch.build(context)
          when :claim_game_server
            Aws::GameLift::Endpoints::ClaimGameServer.build(context)
          when :create_alias
            Aws::GameLift::Endpoints::CreateAlias.build(context)
          when :create_build
            Aws::GameLift::Endpoints::CreateBuild.build(context)
          when :create_fleet
            Aws::GameLift::Endpoints::CreateFleet.build(context)
          when :create_fleet_locations
            Aws::GameLift::Endpoints::CreateFleetLocations.build(context)
          when :create_game_server_group
            Aws::GameLift::Endpoints::CreateGameServerGroup.build(context)
          when :create_game_session
            Aws::GameLift::Endpoints::CreateGameSession.build(context)
          when :create_game_session_queue
            Aws::GameLift::Endpoints::CreateGameSessionQueue.build(context)
          when :create_location
            Aws::GameLift::Endpoints::CreateLocation.build(context)
          when :create_matchmaking_configuration
            Aws::GameLift::Endpoints::CreateMatchmakingConfiguration.build(context)
          when :create_matchmaking_rule_set
            Aws::GameLift::Endpoints::CreateMatchmakingRuleSet.build(context)
          when :create_player_session
            Aws::GameLift::Endpoints::CreatePlayerSession.build(context)
          when :create_player_sessions
            Aws::GameLift::Endpoints::CreatePlayerSessions.build(context)
          when :create_script
            Aws::GameLift::Endpoints::CreateScript.build(context)
          when :create_vpc_peering_authorization
            Aws::GameLift::Endpoints::CreateVpcPeeringAuthorization.build(context)
          when :create_vpc_peering_connection
            Aws::GameLift::Endpoints::CreateVpcPeeringConnection.build(context)
          when :delete_alias
            Aws::GameLift::Endpoints::DeleteAlias.build(context)
          when :delete_build
            Aws::GameLift::Endpoints::DeleteBuild.build(context)
          when :delete_fleet
            Aws::GameLift::Endpoints::DeleteFleet.build(context)
          when :delete_fleet_locations
            Aws::GameLift::Endpoints::DeleteFleetLocations.build(context)
          when :delete_game_server_group
            Aws::GameLift::Endpoints::DeleteGameServerGroup.build(context)
          when :delete_game_session_queue
            Aws::GameLift::Endpoints::DeleteGameSessionQueue.build(context)
          when :delete_location
            Aws::GameLift::Endpoints::DeleteLocation.build(context)
          when :delete_matchmaking_configuration
            Aws::GameLift::Endpoints::DeleteMatchmakingConfiguration.build(context)
          when :delete_matchmaking_rule_set
            Aws::GameLift::Endpoints::DeleteMatchmakingRuleSet.build(context)
          when :delete_scaling_policy
            Aws::GameLift::Endpoints::DeleteScalingPolicy.build(context)
          when :delete_script
            Aws::GameLift::Endpoints::DeleteScript.build(context)
          when :delete_vpc_peering_authorization
            Aws::GameLift::Endpoints::DeleteVpcPeeringAuthorization.build(context)
          when :delete_vpc_peering_connection
            Aws::GameLift::Endpoints::DeleteVpcPeeringConnection.build(context)
          when :deregister_compute
            Aws::GameLift::Endpoints::DeregisterCompute.build(context)
          when :deregister_game_server
            Aws::GameLift::Endpoints::DeregisterGameServer.build(context)
          when :describe_alias
            Aws::GameLift::Endpoints::DescribeAlias.build(context)
          when :describe_build
            Aws::GameLift::Endpoints::DescribeBuild.build(context)
          when :describe_compute
            Aws::GameLift::Endpoints::DescribeCompute.build(context)
          when :describe_ec2_instance_limits
            Aws::GameLift::Endpoints::DescribeEC2InstanceLimits.build(context)
          when :describe_fleet_attributes
            Aws::GameLift::Endpoints::DescribeFleetAttributes.build(context)
          when :describe_fleet_capacity
            Aws::GameLift::Endpoints::DescribeFleetCapacity.build(context)
          when :describe_fleet_events
            Aws::GameLift::Endpoints::DescribeFleetEvents.build(context)
          when :describe_fleet_location_attributes
            Aws::GameLift::Endpoints::DescribeFleetLocationAttributes.build(context)
          when :describe_fleet_location_capacity
            Aws::GameLift::Endpoints::DescribeFleetLocationCapacity.build(context)
          when :describe_fleet_location_utilization
            Aws::GameLift::Endpoints::DescribeFleetLocationUtilization.build(context)
          when :describe_fleet_port_settings
            Aws::GameLift::Endpoints::DescribeFleetPortSettings.build(context)
          when :describe_fleet_utilization
            Aws::GameLift::Endpoints::DescribeFleetUtilization.build(context)
          when :describe_game_server
            Aws::GameLift::Endpoints::DescribeGameServer.build(context)
          when :describe_game_server_group
            Aws::GameLift::Endpoints::DescribeGameServerGroup.build(context)
          when :describe_game_server_instances
            Aws::GameLift::Endpoints::DescribeGameServerInstances.build(context)
          when :describe_game_session_details
            Aws::GameLift::Endpoints::DescribeGameSessionDetails.build(context)
          when :describe_game_session_placement
            Aws::GameLift::Endpoints::DescribeGameSessionPlacement.build(context)
          when :describe_game_session_queues
            Aws::GameLift::Endpoints::DescribeGameSessionQueues.build(context)
          when :describe_game_sessions
            Aws::GameLift::Endpoints::DescribeGameSessions.build(context)
          when :describe_instances
            Aws::GameLift::Endpoints::DescribeInstances.build(context)
          when :describe_matchmaking
            Aws::GameLift::Endpoints::DescribeMatchmaking.build(context)
          when :describe_matchmaking_configurations
            Aws::GameLift::Endpoints::DescribeMatchmakingConfigurations.build(context)
          when :describe_matchmaking_rule_sets
            Aws::GameLift::Endpoints::DescribeMatchmakingRuleSets.build(context)
          when :describe_player_sessions
            Aws::GameLift::Endpoints::DescribePlayerSessions.build(context)
          when :describe_runtime_configuration
            Aws::GameLift::Endpoints::DescribeRuntimeConfiguration.build(context)
          when :describe_scaling_policies
            Aws::GameLift::Endpoints::DescribeScalingPolicies.build(context)
          when :describe_script
            Aws::GameLift::Endpoints::DescribeScript.build(context)
          when :describe_vpc_peering_authorizations
            Aws::GameLift::Endpoints::DescribeVpcPeeringAuthorizations.build(context)
          when :describe_vpc_peering_connections
            Aws::GameLift::Endpoints::DescribeVpcPeeringConnections.build(context)
          when :get_compute_access
            Aws::GameLift::Endpoints::GetComputeAccess.build(context)
          when :get_compute_auth_token
            Aws::GameLift::Endpoints::GetComputeAuthToken.build(context)
          when :get_game_session_log_url
            Aws::GameLift::Endpoints::GetGameSessionLogUrl.build(context)
          when :get_instance_access
            Aws::GameLift::Endpoints::GetInstanceAccess.build(context)
          when :list_aliases
            Aws::GameLift::Endpoints::ListAliases.build(context)
          when :list_builds
            Aws::GameLift::Endpoints::ListBuilds.build(context)
          when :list_compute
            Aws::GameLift::Endpoints::ListCompute.build(context)
          when :list_fleets
            Aws::GameLift::Endpoints::ListFleets.build(context)
          when :list_game_server_groups
            Aws::GameLift::Endpoints::ListGameServerGroups.build(context)
          when :list_game_servers
            Aws::GameLift::Endpoints::ListGameServers.build(context)
          when :list_locations
            Aws::GameLift::Endpoints::ListLocations.build(context)
          when :list_scripts
            Aws::GameLift::Endpoints::ListScripts.build(context)
          when :list_tags_for_resource
            Aws::GameLift::Endpoints::ListTagsForResource.build(context)
          when :put_scaling_policy
            Aws::GameLift::Endpoints::PutScalingPolicy.build(context)
          when :register_compute
            Aws::GameLift::Endpoints::RegisterCompute.build(context)
          when :register_game_server
            Aws::GameLift::Endpoints::RegisterGameServer.build(context)
          when :request_upload_credentials
            Aws::GameLift::Endpoints::RequestUploadCredentials.build(context)
          when :resolve_alias
            Aws::GameLift::Endpoints::ResolveAlias.build(context)
          when :resume_game_server_group
            Aws::GameLift::Endpoints::ResumeGameServerGroup.build(context)
          when :search_game_sessions
            Aws::GameLift::Endpoints::SearchGameSessions.build(context)
          when :start_fleet_actions
            Aws::GameLift::Endpoints::StartFleetActions.build(context)
          when :start_game_session_placement
            Aws::GameLift::Endpoints::StartGameSessionPlacement.build(context)
          when :start_match_backfill
            Aws::GameLift::Endpoints::StartMatchBackfill.build(context)
          when :start_matchmaking
            Aws::GameLift::Endpoints::StartMatchmaking.build(context)
          when :stop_fleet_actions
            Aws::GameLift::Endpoints::StopFleetActions.build(context)
          when :stop_game_session_placement
            Aws::GameLift::Endpoints::StopGameSessionPlacement.build(context)
          when :stop_matchmaking
            Aws::GameLift::Endpoints::StopMatchmaking.build(context)
          when :suspend_game_server_group
            Aws::GameLift::Endpoints::SuspendGameServerGroup.build(context)
          when :tag_resource
            Aws::GameLift::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::GameLift::Endpoints::UntagResource.build(context)
          when :update_alias
            Aws::GameLift::Endpoints::UpdateAlias.build(context)
          when :update_build
            Aws::GameLift::Endpoints::UpdateBuild.build(context)
          when :update_fleet_attributes
            Aws::GameLift::Endpoints::UpdateFleetAttributes.build(context)
          when :update_fleet_capacity
            Aws::GameLift::Endpoints::UpdateFleetCapacity.build(context)
          when :update_fleet_port_settings
            Aws::GameLift::Endpoints::UpdateFleetPortSettings.build(context)
          when :update_game_server
            Aws::GameLift::Endpoints::UpdateGameServer.build(context)
          when :update_game_server_group
            Aws::GameLift::Endpoints::UpdateGameServerGroup.build(context)
          when :update_game_session
            Aws::GameLift::Endpoints::UpdateGameSession.build(context)
          when :update_game_session_queue
            Aws::GameLift::Endpoints::UpdateGameSessionQueue.build(context)
          when :update_matchmaking_configuration
            Aws::GameLift::Endpoints::UpdateMatchmakingConfiguration.build(context)
          when :update_runtime_configuration
            Aws::GameLift::Endpoints::UpdateRuntimeConfiguration.build(context)
          when :update_script
            Aws::GameLift::Endpoints::UpdateScript.build(context)
          when :validate_matchmaking_rule_set
            Aws::GameLift::Endpoints::ValidateMatchmakingRuleSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

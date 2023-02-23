# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LocationService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::LocationService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::LocationService::EndpointParameters`'
      ) do |cfg|
        Aws::LocationService::EndpointProvider.new
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
          when :associate_tracker_consumer
            Aws::LocationService::Endpoints::AssociateTrackerConsumer.build(context)
          when :batch_delete_device_position_history
            Aws::LocationService::Endpoints::BatchDeleteDevicePositionHistory.build(context)
          when :batch_delete_geofence
            Aws::LocationService::Endpoints::BatchDeleteGeofence.build(context)
          when :batch_evaluate_geofences
            Aws::LocationService::Endpoints::BatchEvaluateGeofences.build(context)
          when :batch_get_device_position
            Aws::LocationService::Endpoints::BatchGetDevicePosition.build(context)
          when :batch_put_geofence
            Aws::LocationService::Endpoints::BatchPutGeofence.build(context)
          when :batch_update_device_position
            Aws::LocationService::Endpoints::BatchUpdateDevicePosition.build(context)
          when :calculate_route
            Aws::LocationService::Endpoints::CalculateRoute.build(context)
          when :calculate_route_matrix
            Aws::LocationService::Endpoints::CalculateRouteMatrix.build(context)
          when :create_geofence_collection
            Aws::LocationService::Endpoints::CreateGeofenceCollection.build(context)
          when :create_key
            Aws::LocationService::Endpoints::CreateKey.build(context)
          when :create_map
            Aws::LocationService::Endpoints::CreateMap.build(context)
          when :create_place_index
            Aws::LocationService::Endpoints::CreatePlaceIndex.build(context)
          when :create_route_calculator
            Aws::LocationService::Endpoints::CreateRouteCalculator.build(context)
          when :create_tracker
            Aws::LocationService::Endpoints::CreateTracker.build(context)
          when :delete_geofence_collection
            Aws::LocationService::Endpoints::DeleteGeofenceCollection.build(context)
          when :delete_key
            Aws::LocationService::Endpoints::DeleteKey.build(context)
          when :delete_map
            Aws::LocationService::Endpoints::DeleteMap.build(context)
          when :delete_place_index
            Aws::LocationService::Endpoints::DeletePlaceIndex.build(context)
          when :delete_route_calculator
            Aws::LocationService::Endpoints::DeleteRouteCalculator.build(context)
          when :delete_tracker
            Aws::LocationService::Endpoints::DeleteTracker.build(context)
          when :describe_geofence_collection
            Aws::LocationService::Endpoints::DescribeGeofenceCollection.build(context)
          when :describe_key
            Aws::LocationService::Endpoints::DescribeKey.build(context)
          when :describe_map
            Aws::LocationService::Endpoints::DescribeMap.build(context)
          when :describe_place_index
            Aws::LocationService::Endpoints::DescribePlaceIndex.build(context)
          when :describe_route_calculator
            Aws::LocationService::Endpoints::DescribeRouteCalculator.build(context)
          when :describe_tracker
            Aws::LocationService::Endpoints::DescribeTracker.build(context)
          when :disassociate_tracker_consumer
            Aws::LocationService::Endpoints::DisassociateTrackerConsumer.build(context)
          when :get_device_position
            Aws::LocationService::Endpoints::GetDevicePosition.build(context)
          when :get_device_position_history
            Aws::LocationService::Endpoints::GetDevicePositionHistory.build(context)
          when :get_geofence
            Aws::LocationService::Endpoints::GetGeofence.build(context)
          when :get_map_glyphs
            Aws::LocationService::Endpoints::GetMapGlyphs.build(context)
          when :get_map_sprites
            Aws::LocationService::Endpoints::GetMapSprites.build(context)
          when :get_map_style_descriptor
            Aws::LocationService::Endpoints::GetMapStyleDescriptor.build(context)
          when :get_map_tile
            Aws::LocationService::Endpoints::GetMapTile.build(context)
          when :get_place
            Aws::LocationService::Endpoints::GetPlace.build(context)
          when :list_device_positions
            Aws::LocationService::Endpoints::ListDevicePositions.build(context)
          when :list_geofence_collections
            Aws::LocationService::Endpoints::ListGeofenceCollections.build(context)
          when :list_geofences
            Aws::LocationService::Endpoints::ListGeofences.build(context)
          when :list_keys
            Aws::LocationService::Endpoints::ListKeys.build(context)
          when :list_maps
            Aws::LocationService::Endpoints::ListMaps.build(context)
          when :list_place_indexes
            Aws::LocationService::Endpoints::ListPlaceIndexes.build(context)
          when :list_route_calculators
            Aws::LocationService::Endpoints::ListRouteCalculators.build(context)
          when :list_tags_for_resource
            Aws::LocationService::Endpoints::ListTagsForResource.build(context)
          when :list_tracker_consumers
            Aws::LocationService::Endpoints::ListTrackerConsumers.build(context)
          when :list_trackers
            Aws::LocationService::Endpoints::ListTrackers.build(context)
          when :put_geofence
            Aws::LocationService::Endpoints::PutGeofence.build(context)
          when :search_place_index_for_position
            Aws::LocationService::Endpoints::SearchPlaceIndexForPosition.build(context)
          when :search_place_index_for_suggestions
            Aws::LocationService::Endpoints::SearchPlaceIndexForSuggestions.build(context)
          when :search_place_index_for_text
            Aws::LocationService::Endpoints::SearchPlaceIndexForText.build(context)
          when :tag_resource
            Aws::LocationService::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::LocationService::Endpoints::UntagResource.build(context)
          when :update_geofence_collection
            Aws::LocationService::Endpoints::UpdateGeofenceCollection.build(context)
          when :update_key
            Aws::LocationService::Endpoints::UpdateKey.build(context)
          when :update_map
            Aws::LocationService::Endpoints::UpdateMap.build(context)
          when :update_place_index
            Aws::LocationService::Endpoints::UpdatePlaceIndex.build(context)
          when :update_route_calculator
            Aws::LocationService::Endpoints::UpdateRouteCalculator.build(context)
          when :update_tracker
            Aws::LocationService::Endpoints::UpdateTracker.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

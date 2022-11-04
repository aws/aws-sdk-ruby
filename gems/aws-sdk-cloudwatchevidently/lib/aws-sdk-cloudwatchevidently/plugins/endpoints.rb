# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudWatchEvidently
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudWatchEvidently::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudWatchEvidently::EndpointParameters`'
      ) do |cfg|
        Aws::CloudWatchEvidently::EndpointProvider.new
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
          when :batch_evaluate_feature
            Aws::CloudWatchEvidently::Endpoints::BatchEvaluateFeature.build(context)
          when :create_experiment
            Aws::CloudWatchEvidently::Endpoints::CreateExperiment.build(context)
          when :create_feature
            Aws::CloudWatchEvidently::Endpoints::CreateFeature.build(context)
          when :create_launch
            Aws::CloudWatchEvidently::Endpoints::CreateLaunch.build(context)
          when :create_project
            Aws::CloudWatchEvidently::Endpoints::CreateProject.build(context)
          when :create_segment
            Aws::CloudWatchEvidently::Endpoints::CreateSegment.build(context)
          when :delete_experiment
            Aws::CloudWatchEvidently::Endpoints::DeleteExperiment.build(context)
          when :delete_feature
            Aws::CloudWatchEvidently::Endpoints::DeleteFeature.build(context)
          when :delete_launch
            Aws::CloudWatchEvidently::Endpoints::DeleteLaunch.build(context)
          when :delete_project
            Aws::CloudWatchEvidently::Endpoints::DeleteProject.build(context)
          when :delete_segment
            Aws::CloudWatchEvidently::Endpoints::DeleteSegment.build(context)
          when :evaluate_feature
            Aws::CloudWatchEvidently::Endpoints::EvaluateFeature.build(context)
          when :get_experiment
            Aws::CloudWatchEvidently::Endpoints::GetExperiment.build(context)
          when :get_experiment_results
            Aws::CloudWatchEvidently::Endpoints::GetExperimentResults.build(context)
          when :get_feature
            Aws::CloudWatchEvidently::Endpoints::GetFeature.build(context)
          when :get_launch
            Aws::CloudWatchEvidently::Endpoints::GetLaunch.build(context)
          when :get_project
            Aws::CloudWatchEvidently::Endpoints::GetProject.build(context)
          when :get_segment
            Aws::CloudWatchEvidently::Endpoints::GetSegment.build(context)
          when :list_experiments
            Aws::CloudWatchEvidently::Endpoints::ListExperiments.build(context)
          when :list_features
            Aws::CloudWatchEvidently::Endpoints::ListFeatures.build(context)
          when :list_launches
            Aws::CloudWatchEvidently::Endpoints::ListLaunches.build(context)
          when :list_projects
            Aws::CloudWatchEvidently::Endpoints::ListProjects.build(context)
          when :list_segment_references
            Aws::CloudWatchEvidently::Endpoints::ListSegmentReferences.build(context)
          when :list_segments
            Aws::CloudWatchEvidently::Endpoints::ListSegments.build(context)
          when :list_tags_for_resource
            Aws::CloudWatchEvidently::Endpoints::ListTagsForResource.build(context)
          when :put_project_events
            Aws::CloudWatchEvidently::Endpoints::PutProjectEvents.build(context)
          when :start_experiment
            Aws::CloudWatchEvidently::Endpoints::StartExperiment.build(context)
          when :start_launch
            Aws::CloudWatchEvidently::Endpoints::StartLaunch.build(context)
          when :stop_experiment
            Aws::CloudWatchEvidently::Endpoints::StopExperiment.build(context)
          when :stop_launch
            Aws::CloudWatchEvidently::Endpoints::StopLaunch.build(context)
          when :tag_resource
            Aws::CloudWatchEvidently::Endpoints::TagResource.build(context)
          when :test_segment_pattern
            Aws::CloudWatchEvidently::Endpoints::TestSegmentPattern.build(context)
          when :untag_resource
            Aws::CloudWatchEvidently::Endpoints::UntagResource.build(context)
          when :update_experiment
            Aws::CloudWatchEvidently::Endpoints::UpdateExperiment.build(context)
          when :update_feature
            Aws::CloudWatchEvidently::Endpoints::UpdateFeature.build(context)
          when :update_launch
            Aws::CloudWatchEvidently::Endpoints::UpdateLaunch.build(context)
          when :update_project
            Aws::CloudWatchEvidently::Endpoints::UpdateProject.build(context)
          when :update_project_data_delivery
            Aws::CloudWatchEvidently::Endpoints::UpdateProjectDataDelivery.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

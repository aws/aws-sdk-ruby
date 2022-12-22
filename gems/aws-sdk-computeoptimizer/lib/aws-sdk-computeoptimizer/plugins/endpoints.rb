# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ComputeOptimizer
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ComputeOptimizer::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ComputeOptimizer::EndpointParameters`'
      ) do |cfg|
        Aws::ComputeOptimizer::EndpointProvider.new
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
          when :delete_recommendation_preferences
            Aws::ComputeOptimizer::Endpoints::DeleteRecommendationPreferences.build(context)
          when :describe_recommendation_export_jobs
            Aws::ComputeOptimizer::Endpoints::DescribeRecommendationExportJobs.build(context)
          when :export_auto_scaling_group_recommendations
            Aws::ComputeOptimizer::Endpoints::ExportAutoScalingGroupRecommendations.build(context)
          when :export_ebs_volume_recommendations
            Aws::ComputeOptimizer::Endpoints::ExportEBSVolumeRecommendations.build(context)
          when :export_ec2_instance_recommendations
            Aws::ComputeOptimizer::Endpoints::ExportEC2InstanceRecommendations.build(context)
          when :export_ecs_service_recommendations
            Aws::ComputeOptimizer::Endpoints::ExportECSServiceRecommendations.build(context)
          when :export_lambda_function_recommendations
            Aws::ComputeOptimizer::Endpoints::ExportLambdaFunctionRecommendations.build(context)
          when :get_auto_scaling_group_recommendations
            Aws::ComputeOptimizer::Endpoints::GetAutoScalingGroupRecommendations.build(context)
          when :get_ebs_volume_recommendations
            Aws::ComputeOptimizer::Endpoints::GetEBSVolumeRecommendations.build(context)
          when :get_ec2_instance_recommendations
            Aws::ComputeOptimizer::Endpoints::GetEC2InstanceRecommendations.build(context)
          when :get_ec2_recommendation_projected_metrics
            Aws::ComputeOptimizer::Endpoints::GetEC2RecommendationProjectedMetrics.build(context)
          when :get_ecs_service_recommendation_projected_metrics
            Aws::ComputeOptimizer::Endpoints::GetECSServiceRecommendationProjectedMetrics.build(context)
          when :get_ecs_service_recommendations
            Aws::ComputeOptimizer::Endpoints::GetECSServiceRecommendations.build(context)
          when :get_effective_recommendation_preferences
            Aws::ComputeOptimizer::Endpoints::GetEffectiveRecommendationPreferences.build(context)
          when :get_enrollment_status
            Aws::ComputeOptimizer::Endpoints::GetEnrollmentStatus.build(context)
          when :get_enrollment_statuses_for_organization
            Aws::ComputeOptimizer::Endpoints::GetEnrollmentStatusesForOrganization.build(context)
          when :get_lambda_function_recommendations
            Aws::ComputeOptimizer::Endpoints::GetLambdaFunctionRecommendations.build(context)
          when :get_recommendation_preferences
            Aws::ComputeOptimizer::Endpoints::GetRecommendationPreferences.build(context)
          when :get_recommendation_summaries
            Aws::ComputeOptimizer::Endpoints::GetRecommendationSummaries.build(context)
          when :put_recommendation_preferences
            Aws::ComputeOptimizer::Endpoints::PutRecommendationPreferences.build(context)
          when :update_enrollment_status
            Aws::ComputeOptimizer::Endpoints::UpdateEnrollmentStatus.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

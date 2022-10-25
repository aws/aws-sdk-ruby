# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Route53RecoveryReadiness
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Route53RecoveryReadiness::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Route53RecoveryReadiness::EndpointParameters`'
      ) do |cfg|
        Aws::Route53RecoveryReadiness::EndpointProvider.new
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
          when :create_cell
            Aws::Route53RecoveryReadiness::Endpoints::CreateCell.build(context)
          when :create_cross_account_authorization
            Aws::Route53RecoveryReadiness::Endpoints::CreateCrossAccountAuthorization.build(context)
          when :create_readiness_check
            Aws::Route53RecoveryReadiness::Endpoints::CreateReadinessCheck.build(context)
          when :create_recovery_group
            Aws::Route53RecoveryReadiness::Endpoints::CreateRecoveryGroup.build(context)
          when :create_resource_set
            Aws::Route53RecoveryReadiness::Endpoints::CreateResourceSet.build(context)
          when :delete_cell
            Aws::Route53RecoveryReadiness::Endpoints::DeleteCell.build(context)
          when :delete_cross_account_authorization
            Aws::Route53RecoveryReadiness::Endpoints::DeleteCrossAccountAuthorization.build(context)
          when :delete_readiness_check
            Aws::Route53RecoveryReadiness::Endpoints::DeleteReadinessCheck.build(context)
          when :delete_recovery_group
            Aws::Route53RecoveryReadiness::Endpoints::DeleteRecoveryGroup.build(context)
          when :delete_resource_set
            Aws::Route53RecoveryReadiness::Endpoints::DeleteResourceSet.build(context)
          when :get_architecture_recommendations
            Aws::Route53RecoveryReadiness::Endpoints::GetArchitectureRecommendations.build(context)
          when :get_cell
            Aws::Route53RecoveryReadiness::Endpoints::GetCell.build(context)
          when :get_cell_readiness_summary
            Aws::Route53RecoveryReadiness::Endpoints::GetCellReadinessSummary.build(context)
          when :get_readiness_check
            Aws::Route53RecoveryReadiness::Endpoints::GetReadinessCheck.build(context)
          when :get_readiness_check_resource_status
            Aws::Route53RecoveryReadiness::Endpoints::GetReadinessCheckResourceStatus.build(context)
          when :get_readiness_check_status
            Aws::Route53RecoveryReadiness::Endpoints::GetReadinessCheckStatus.build(context)
          when :get_recovery_group
            Aws::Route53RecoveryReadiness::Endpoints::GetRecoveryGroup.build(context)
          when :get_recovery_group_readiness_summary
            Aws::Route53RecoveryReadiness::Endpoints::GetRecoveryGroupReadinessSummary.build(context)
          when :get_resource_set
            Aws::Route53RecoveryReadiness::Endpoints::GetResourceSet.build(context)
          when :list_cells
            Aws::Route53RecoveryReadiness::Endpoints::ListCells.build(context)
          when :list_cross_account_authorizations
            Aws::Route53RecoveryReadiness::Endpoints::ListCrossAccountAuthorizations.build(context)
          when :list_readiness_checks
            Aws::Route53RecoveryReadiness::Endpoints::ListReadinessChecks.build(context)
          when :list_recovery_groups
            Aws::Route53RecoveryReadiness::Endpoints::ListRecoveryGroups.build(context)
          when :list_resource_sets
            Aws::Route53RecoveryReadiness::Endpoints::ListResourceSets.build(context)
          when :list_rules
            Aws::Route53RecoveryReadiness::Endpoints::ListRules.build(context)
          when :list_tags_for_resources
            Aws::Route53RecoveryReadiness::Endpoints::ListTagsForResources.build(context)
          when :tag_resource
            Aws::Route53RecoveryReadiness::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Route53RecoveryReadiness::Endpoints::UntagResource.build(context)
          when :update_cell
            Aws::Route53RecoveryReadiness::Endpoints::UpdateCell.build(context)
          when :update_readiness_check
            Aws::Route53RecoveryReadiness::Endpoints::UpdateReadinessCheck.build(context)
          when :update_recovery_group
            Aws::Route53RecoveryReadiness::Endpoints::UpdateRecoveryGroup.build(context)
          when :update_resource_set
            Aws::Route53RecoveryReadiness::Endpoints::UpdateResourceSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

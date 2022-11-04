# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Amplify
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Amplify::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Amplify::EndpointParameters`'
      ) do |cfg|
        Aws::Amplify::EndpointProvider.new
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
          when :create_app
            Aws::Amplify::Endpoints::CreateApp.build(context)
          when :create_backend_environment
            Aws::Amplify::Endpoints::CreateBackendEnvironment.build(context)
          when :create_branch
            Aws::Amplify::Endpoints::CreateBranch.build(context)
          when :create_deployment
            Aws::Amplify::Endpoints::CreateDeployment.build(context)
          when :create_domain_association
            Aws::Amplify::Endpoints::CreateDomainAssociation.build(context)
          when :create_webhook
            Aws::Amplify::Endpoints::CreateWebhook.build(context)
          when :delete_app
            Aws::Amplify::Endpoints::DeleteApp.build(context)
          when :delete_backend_environment
            Aws::Amplify::Endpoints::DeleteBackendEnvironment.build(context)
          when :delete_branch
            Aws::Amplify::Endpoints::DeleteBranch.build(context)
          when :delete_domain_association
            Aws::Amplify::Endpoints::DeleteDomainAssociation.build(context)
          when :delete_job
            Aws::Amplify::Endpoints::DeleteJob.build(context)
          when :delete_webhook
            Aws::Amplify::Endpoints::DeleteWebhook.build(context)
          when :generate_access_logs
            Aws::Amplify::Endpoints::GenerateAccessLogs.build(context)
          when :get_app
            Aws::Amplify::Endpoints::GetApp.build(context)
          when :get_artifact_url
            Aws::Amplify::Endpoints::GetArtifactUrl.build(context)
          when :get_backend_environment
            Aws::Amplify::Endpoints::GetBackendEnvironment.build(context)
          when :get_branch
            Aws::Amplify::Endpoints::GetBranch.build(context)
          when :get_domain_association
            Aws::Amplify::Endpoints::GetDomainAssociation.build(context)
          when :get_job
            Aws::Amplify::Endpoints::GetJob.build(context)
          when :get_webhook
            Aws::Amplify::Endpoints::GetWebhook.build(context)
          when :list_apps
            Aws::Amplify::Endpoints::ListApps.build(context)
          when :list_artifacts
            Aws::Amplify::Endpoints::ListArtifacts.build(context)
          when :list_backend_environments
            Aws::Amplify::Endpoints::ListBackendEnvironments.build(context)
          when :list_branches
            Aws::Amplify::Endpoints::ListBranches.build(context)
          when :list_domain_associations
            Aws::Amplify::Endpoints::ListDomainAssociations.build(context)
          when :list_jobs
            Aws::Amplify::Endpoints::ListJobs.build(context)
          when :list_tags_for_resource
            Aws::Amplify::Endpoints::ListTagsForResource.build(context)
          when :list_webhooks
            Aws::Amplify::Endpoints::ListWebhooks.build(context)
          when :start_deployment
            Aws::Amplify::Endpoints::StartDeployment.build(context)
          when :start_job
            Aws::Amplify::Endpoints::StartJob.build(context)
          when :stop_job
            Aws::Amplify::Endpoints::StopJob.build(context)
          when :tag_resource
            Aws::Amplify::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Amplify::Endpoints::UntagResource.build(context)
          when :update_app
            Aws::Amplify::Endpoints::UpdateApp.build(context)
          when :update_branch
            Aws::Amplify::Endpoints::UpdateBranch.build(context)
          when :update_domain_association
            Aws::Amplify::Endpoints::UpdateDomainAssociation.build(context)
          when :update_webhook
            Aws::Amplify::Endpoints::UpdateWebhook.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

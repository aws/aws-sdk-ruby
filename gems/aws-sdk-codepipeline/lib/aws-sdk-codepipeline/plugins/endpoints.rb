# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodePipeline
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodePipeline::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodePipeline::EndpointParameters`'
      ) do |cfg|
        Aws::CodePipeline::EndpointProvider.new
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
          when :acknowledge_job
            Aws::CodePipeline::Endpoints::AcknowledgeJob.build(context)
          when :acknowledge_third_party_job
            Aws::CodePipeline::Endpoints::AcknowledgeThirdPartyJob.build(context)
          when :create_custom_action_type
            Aws::CodePipeline::Endpoints::CreateCustomActionType.build(context)
          when :create_pipeline
            Aws::CodePipeline::Endpoints::CreatePipeline.build(context)
          when :delete_custom_action_type
            Aws::CodePipeline::Endpoints::DeleteCustomActionType.build(context)
          when :delete_pipeline
            Aws::CodePipeline::Endpoints::DeletePipeline.build(context)
          when :delete_webhook
            Aws::CodePipeline::Endpoints::DeleteWebhook.build(context)
          when :deregister_webhook_with_third_party
            Aws::CodePipeline::Endpoints::DeregisterWebhookWithThirdParty.build(context)
          when :disable_stage_transition
            Aws::CodePipeline::Endpoints::DisableStageTransition.build(context)
          when :enable_stage_transition
            Aws::CodePipeline::Endpoints::EnableStageTransition.build(context)
          when :get_action_type
            Aws::CodePipeline::Endpoints::GetActionType.build(context)
          when :get_job_details
            Aws::CodePipeline::Endpoints::GetJobDetails.build(context)
          when :get_pipeline
            Aws::CodePipeline::Endpoints::GetPipeline.build(context)
          when :get_pipeline_execution
            Aws::CodePipeline::Endpoints::GetPipelineExecution.build(context)
          when :get_pipeline_state
            Aws::CodePipeline::Endpoints::GetPipelineState.build(context)
          when :get_third_party_job_details
            Aws::CodePipeline::Endpoints::GetThirdPartyJobDetails.build(context)
          when :list_action_executions
            Aws::CodePipeline::Endpoints::ListActionExecutions.build(context)
          when :list_action_types
            Aws::CodePipeline::Endpoints::ListActionTypes.build(context)
          when :list_pipeline_executions
            Aws::CodePipeline::Endpoints::ListPipelineExecutions.build(context)
          when :list_pipelines
            Aws::CodePipeline::Endpoints::ListPipelines.build(context)
          when :list_tags_for_resource
            Aws::CodePipeline::Endpoints::ListTagsForResource.build(context)
          when :list_webhooks
            Aws::CodePipeline::Endpoints::ListWebhooks.build(context)
          when :poll_for_jobs
            Aws::CodePipeline::Endpoints::PollForJobs.build(context)
          when :poll_for_third_party_jobs
            Aws::CodePipeline::Endpoints::PollForThirdPartyJobs.build(context)
          when :put_action_revision
            Aws::CodePipeline::Endpoints::PutActionRevision.build(context)
          when :put_approval_result
            Aws::CodePipeline::Endpoints::PutApprovalResult.build(context)
          when :put_job_failure_result
            Aws::CodePipeline::Endpoints::PutJobFailureResult.build(context)
          when :put_job_success_result
            Aws::CodePipeline::Endpoints::PutJobSuccessResult.build(context)
          when :put_third_party_job_failure_result
            Aws::CodePipeline::Endpoints::PutThirdPartyJobFailureResult.build(context)
          when :put_third_party_job_success_result
            Aws::CodePipeline::Endpoints::PutThirdPartyJobSuccessResult.build(context)
          when :put_webhook
            Aws::CodePipeline::Endpoints::PutWebhook.build(context)
          when :register_webhook_with_third_party
            Aws::CodePipeline::Endpoints::RegisterWebhookWithThirdParty.build(context)
          when :retry_stage_execution
            Aws::CodePipeline::Endpoints::RetryStageExecution.build(context)
          when :start_pipeline_execution
            Aws::CodePipeline::Endpoints::StartPipelineExecution.build(context)
          when :stop_pipeline_execution
            Aws::CodePipeline::Endpoints::StopPipelineExecution.build(context)
          when :tag_resource
            Aws::CodePipeline::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CodePipeline::Endpoints::UntagResource.build(context)
          when :update_action_type
            Aws::CodePipeline::Endpoints::UpdateActionType.build(context)
          when :update_pipeline
            Aws::CodePipeline::Endpoints::UpdatePipeline.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

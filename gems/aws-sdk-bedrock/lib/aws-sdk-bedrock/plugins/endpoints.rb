# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Bedrock
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Bedrock::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::Bedrock::EndpointParameters`.
        DOCS
        Aws::Bedrock::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

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
          when :batch_delete_evaluation_job
            Aws::Bedrock::Endpoints::BatchDeleteEvaluationJob.build(context)
          when :create_evaluation_job
            Aws::Bedrock::Endpoints::CreateEvaluationJob.build(context)
          when :create_guardrail
            Aws::Bedrock::Endpoints::CreateGuardrail.build(context)
          when :create_guardrail_version
            Aws::Bedrock::Endpoints::CreateGuardrailVersion.build(context)
          when :create_model_copy_job
            Aws::Bedrock::Endpoints::CreateModelCopyJob.build(context)
          when :create_model_customization_job
            Aws::Bedrock::Endpoints::CreateModelCustomizationJob.build(context)
          when :create_model_import_job
            Aws::Bedrock::Endpoints::CreateModelImportJob.build(context)
          when :create_model_invocation_job
            Aws::Bedrock::Endpoints::CreateModelInvocationJob.build(context)
          when :create_provisioned_model_throughput
            Aws::Bedrock::Endpoints::CreateProvisionedModelThroughput.build(context)
          when :delete_custom_model
            Aws::Bedrock::Endpoints::DeleteCustomModel.build(context)
          when :delete_guardrail
            Aws::Bedrock::Endpoints::DeleteGuardrail.build(context)
          when :delete_imported_model
            Aws::Bedrock::Endpoints::DeleteImportedModel.build(context)
          when :delete_model_invocation_logging_configuration
            Aws::Bedrock::Endpoints::DeleteModelInvocationLoggingConfiguration.build(context)
          when :delete_provisioned_model_throughput
            Aws::Bedrock::Endpoints::DeleteProvisionedModelThroughput.build(context)
          when :get_custom_model
            Aws::Bedrock::Endpoints::GetCustomModel.build(context)
          when :get_evaluation_job
            Aws::Bedrock::Endpoints::GetEvaluationJob.build(context)
          when :get_foundation_model
            Aws::Bedrock::Endpoints::GetFoundationModel.build(context)
          when :get_guardrail
            Aws::Bedrock::Endpoints::GetGuardrail.build(context)
          when :get_imported_model
            Aws::Bedrock::Endpoints::GetImportedModel.build(context)
          when :get_inference_profile
            Aws::Bedrock::Endpoints::GetInferenceProfile.build(context)
          when :get_model_copy_job
            Aws::Bedrock::Endpoints::GetModelCopyJob.build(context)
          when :get_model_customization_job
            Aws::Bedrock::Endpoints::GetModelCustomizationJob.build(context)
          when :get_model_import_job
            Aws::Bedrock::Endpoints::GetModelImportJob.build(context)
          when :get_model_invocation_job
            Aws::Bedrock::Endpoints::GetModelInvocationJob.build(context)
          when :get_model_invocation_logging_configuration
            Aws::Bedrock::Endpoints::GetModelInvocationLoggingConfiguration.build(context)
          when :get_provisioned_model_throughput
            Aws::Bedrock::Endpoints::GetProvisionedModelThroughput.build(context)
          when :list_custom_models
            Aws::Bedrock::Endpoints::ListCustomModels.build(context)
          when :list_evaluation_jobs
            Aws::Bedrock::Endpoints::ListEvaluationJobs.build(context)
          when :list_foundation_models
            Aws::Bedrock::Endpoints::ListFoundationModels.build(context)
          when :list_guardrails
            Aws::Bedrock::Endpoints::ListGuardrails.build(context)
          when :list_imported_models
            Aws::Bedrock::Endpoints::ListImportedModels.build(context)
          when :list_inference_profiles
            Aws::Bedrock::Endpoints::ListInferenceProfiles.build(context)
          when :list_model_copy_jobs
            Aws::Bedrock::Endpoints::ListModelCopyJobs.build(context)
          when :list_model_customization_jobs
            Aws::Bedrock::Endpoints::ListModelCustomizationJobs.build(context)
          when :list_model_import_jobs
            Aws::Bedrock::Endpoints::ListModelImportJobs.build(context)
          when :list_model_invocation_jobs
            Aws::Bedrock::Endpoints::ListModelInvocationJobs.build(context)
          when :list_provisioned_model_throughputs
            Aws::Bedrock::Endpoints::ListProvisionedModelThroughputs.build(context)
          when :list_tags_for_resource
            Aws::Bedrock::Endpoints::ListTagsForResource.build(context)
          when :put_model_invocation_logging_configuration
            Aws::Bedrock::Endpoints::PutModelInvocationLoggingConfiguration.build(context)
          when :stop_evaluation_job
            Aws::Bedrock::Endpoints::StopEvaluationJob.build(context)
          when :stop_model_customization_job
            Aws::Bedrock::Endpoints::StopModelCustomizationJob.build(context)
          when :stop_model_invocation_job
            Aws::Bedrock::Endpoints::StopModelInvocationJob.build(context)
          when :tag_resource
            Aws::Bedrock::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Bedrock::Endpoints::UntagResource.build(context)
          when :update_guardrail
            Aws::Bedrock::Endpoints::UpdateGuardrail.build(context)
          when :update_provisioned_model_throughput
            Aws::Bedrock::Endpoints::UpdateProvisionedModelThroughput.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ComprehendMedical
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ComprehendMedical::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ComprehendMedical::EndpointParameters`'
      ) do |cfg|
        Aws::ComprehendMedical::EndpointProvider.new
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
          when :describe_entities_detection_v2_job
            Aws::ComprehendMedical::Endpoints::DescribeEntitiesDetectionV2Job.build(context)
          when :describe_icd10cm_inference_job
            Aws::ComprehendMedical::Endpoints::DescribeICD10CMInferenceJob.build(context)
          when :describe_phi_detection_job
            Aws::ComprehendMedical::Endpoints::DescribePHIDetectionJob.build(context)
          when :describe_rx_norm_inference_job
            Aws::ComprehendMedical::Endpoints::DescribeRxNormInferenceJob.build(context)
          when :describe_snomedct_inference_job
            Aws::ComprehendMedical::Endpoints::DescribeSNOMEDCTInferenceJob.build(context)
          when :detect_entities
            Aws::ComprehendMedical::Endpoints::DetectEntities.build(context)
          when :detect_entities_v2
            Aws::ComprehendMedical::Endpoints::DetectEntitiesV2.build(context)
          when :detect_phi
            Aws::ComprehendMedical::Endpoints::DetectPHI.build(context)
          when :infer_icd10cm
            Aws::ComprehendMedical::Endpoints::InferICD10CM.build(context)
          when :infer_rx_norm
            Aws::ComprehendMedical::Endpoints::InferRxNorm.build(context)
          when :infer_snomedct
            Aws::ComprehendMedical::Endpoints::InferSNOMEDCT.build(context)
          when :list_entities_detection_v2_jobs
            Aws::ComprehendMedical::Endpoints::ListEntitiesDetectionV2Jobs.build(context)
          when :list_icd10cm_inference_jobs
            Aws::ComprehendMedical::Endpoints::ListICD10CMInferenceJobs.build(context)
          when :list_phi_detection_jobs
            Aws::ComprehendMedical::Endpoints::ListPHIDetectionJobs.build(context)
          when :list_rx_norm_inference_jobs
            Aws::ComprehendMedical::Endpoints::ListRxNormInferenceJobs.build(context)
          when :list_snomedct_inference_jobs
            Aws::ComprehendMedical::Endpoints::ListSNOMEDCTInferenceJobs.build(context)
          when :start_entities_detection_v2_job
            Aws::ComprehendMedical::Endpoints::StartEntitiesDetectionV2Job.build(context)
          when :start_icd10cm_inference_job
            Aws::ComprehendMedical::Endpoints::StartICD10CMInferenceJob.build(context)
          when :start_phi_detection_job
            Aws::ComprehendMedical::Endpoints::StartPHIDetectionJob.build(context)
          when :start_rx_norm_inference_job
            Aws::ComprehendMedical::Endpoints::StartRxNormInferenceJob.build(context)
          when :start_snomedct_inference_job
            Aws::ComprehendMedical::Endpoints::StartSNOMEDCTInferenceJob.build(context)
          when :stop_entities_detection_v2_job
            Aws::ComprehendMedical::Endpoints::StopEntitiesDetectionV2Job.build(context)
          when :stop_icd10cm_inference_job
            Aws::ComprehendMedical::Endpoints::StopICD10CMInferenceJob.build(context)
          when :stop_phi_detection_job
            Aws::ComprehendMedical::Endpoints::StopPHIDetectionJob.build(context)
          when :stop_rx_norm_inference_job
            Aws::ComprehendMedical::Endpoints::StopRxNormInferenceJob.build(context)
          when :stop_snomedct_inference_job
            Aws::ComprehendMedical::Endpoints::StopSNOMEDCTInferenceJob.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ServiceQuotas
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ServiceQuotas::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ServiceQuotas::EndpointParameters`'
      ) do |cfg|
        Aws::ServiceQuotas::EndpointProvider.new
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
          when :associate_service_quota_template
            Aws::ServiceQuotas::Endpoints::AssociateServiceQuotaTemplate.build(context)
          when :delete_service_quota_increase_request_from_template
            Aws::ServiceQuotas::Endpoints::DeleteServiceQuotaIncreaseRequestFromTemplate.build(context)
          when :disassociate_service_quota_template
            Aws::ServiceQuotas::Endpoints::DisassociateServiceQuotaTemplate.build(context)
          when :get_aws_default_service_quota
            Aws::ServiceQuotas::Endpoints::GetAWSDefaultServiceQuota.build(context)
          when :get_association_for_service_quota_template
            Aws::ServiceQuotas::Endpoints::GetAssociationForServiceQuotaTemplate.build(context)
          when :get_requested_service_quota_change
            Aws::ServiceQuotas::Endpoints::GetRequestedServiceQuotaChange.build(context)
          when :get_service_quota
            Aws::ServiceQuotas::Endpoints::GetServiceQuota.build(context)
          when :get_service_quota_increase_request_from_template
            Aws::ServiceQuotas::Endpoints::GetServiceQuotaIncreaseRequestFromTemplate.build(context)
          when :list_aws_default_service_quotas
            Aws::ServiceQuotas::Endpoints::ListAWSDefaultServiceQuotas.build(context)
          when :list_requested_service_quota_change_history
            Aws::ServiceQuotas::Endpoints::ListRequestedServiceQuotaChangeHistory.build(context)
          when :list_requested_service_quota_change_history_by_quota
            Aws::ServiceQuotas::Endpoints::ListRequestedServiceQuotaChangeHistoryByQuota.build(context)
          when :list_service_quota_increase_requests_in_template
            Aws::ServiceQuotas::Endpoints::ListServiceQuotaIncreaseRequestsInTemplate.build(context)
          when :list_service_quotas
            Aws::ServiceQuotas::Endpoints::ListServiceQuotas.build(context)
          when :list_services
            Aws::ServiceQuotas::Endpoints::ListServices.build(context)
          when :list_tags_for_resource
            Aws::ServiceQuotas::Endpoints::ListTagsForResource.build(context)
          when :put_service_quota_increase_request_into_template
            Aws::ServiceQuotas::Endpoints::PutServiceQuotaIncreaseRequestIntoTemplate.build(context)
          when :request_service_quota_increase
            Aws::ServiceQuotas::Endpoints::RequestServiceQuotaIncrease.build(context)
          when :tag_resource
            Aws::ServiceQuotas::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ServiceQuotas::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

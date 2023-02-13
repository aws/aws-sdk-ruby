# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Snowball
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Snowball::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Snowball::EndpointParameters`'
      ) do |cfg|
        Aws::Snowball::EndpointProvider.new
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
          when :cancel_cluster
            Aws::Snowball::Endpoints::CancelCluster.build(context)
          when :cancel_job
            Aws::Snowball::Endpoints::CancelJob.build(context)
          when :create_address
            Aws::Snowball::Endpoints::CreateAddress.build(context)
          when :create_cluster
            Aws::Snowball::Endpoints::CreateCluster.build(context)
          when :create_job
            Aws::Snowball::Endpoints::CreateJob.build(context)
          when :create_long_term_pricing
            Aws::Snowball::Endpoints::CreateLongTermPricing.build(context)
          when :create_return_shipping_label
            Aws::Snowball::Endpoints::CreateReturnShippingLabel.build(context)
          when :describe_address
            Aws::Snowball::Endpoints::DescribeAddress.build(context)
          when :describe_addresses
            Aws::Snowball::Endpoints::DescribeAddresses.build(context)
          when :describe_cluster
            Aws::Snowball::Endpoints::DescribeCluster.build(context)
          when :describe_job
            Aws::Snowball::Endpoints::DescribeJob.build(context)
          when :describe_return_shipping_label
            Aws::Snowball::Endpoints::DescribeReturnShippingLabel.build(context)
          when :get_job_manifest
            Aws::Snowball::Endpoints::GetJobManifest.build(context)
          when :get_job_unlock_code
            Aws::Snowball::Endpoints::GetJobUnlockCode.build(context)
          when :get_snowball_usage
            Aws::Snowball::Endpoints::GetSnowballUsage.build(context)
          when :get_software_updates
            Aws::Snowball::Endpoints::GetSoftwareUpdates.build(context)
          when :list_cluster_jobs
            Aws::Snowball::Endpoints::ListClusterJobs.build(context)
          when :list_clusters
            Aws::Snowball::Endpoints::ListClusters.build(context)
          when :list_compatible_images
            Aws::Snowball::Endpoints::ListCompatibleImages.build(context)
          when :list_jobs
            Aws::Snowball::Endpoints::ListJobs.build(context)
          when :list_long_term_pricing
            Aws::Snowball::Endpoints::ListLongTermPricing.build(context)
          when :list_service_versions
            Aws::Snowball::Endpoints::ListServiceVersions.build(context)
          when :update_cluster
            Aws::Snowball::Endpoints::UpdateCluster.build(context)
          when :update_job
            Aws::Snowball::Endpoints::UpdateJob.build(context)
          when :update_job_shipment_state
            Aws::Snowball::Endpoints::UpdateJobShipmentState.build(context)
          when :update_long_term_pricing
            Aws::Snowball::Endpoints::UpdateLongTermPricing.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

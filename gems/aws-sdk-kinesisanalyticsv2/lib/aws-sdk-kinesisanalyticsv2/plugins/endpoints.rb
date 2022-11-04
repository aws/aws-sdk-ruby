# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::KinesisAnalyticsV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::KinesisAnalyticsV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::KinesisAnalyticsV2::EndpointParameters`'
      ) do |cfg|
        Aws::KinesisAnalyticsV2::EndpointProvider.new
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
          when :add_application_cloud_watch_logging_option
            Aws::KinesisAnalyticsV2::Endpoints::AddApplicationCloudWatchLoggingOption.build(context)
          when :add_application_input
            Aws::KinesisAnalyticsV2::Endpoints::AddApplicationInput.build(context)
          when :add_application_input_processing_configuration
            Aws::KinesisAnalyticsV2::Endpoints::AddApplicationInputProcessingConfiguration.build(context)
          when :add_application_output
            Aws::KinesisAnalyticsV2::Endpoints::AddApplicationOutput.build(context)
          when :add_application_reference_data_source
            Aws::KinesisAnalyticsV2::Endpoints::AddApplicationReferenceDataSource.build(context)
          when :add_application_vpc_configuration
            Aws::KinesisAnalyticsV2::Endpoints::AddApplicationVpcConfiguration.build(context)
          when :create_application
            Aws::KinesisAnalyticsV2::Endpoints::CreateApplication.build(context)
          when :create_application_presigned_url
            Aws::KinesisAnalyticsV2::Endpoints::CreateApplicationPresignedUrl.build(context)
          when :create_application_snapshot
            Aws::KinesisAnalyticsV2::Endpoints::CreateApplicationSnapshot.build(context)
          when :delete_application
            Aws::KinesisAnalyticsV2::Endpoints::DeleteApplication.build(context)
          when :delete_application_cloud_watch_logging_option
            Aws::KinesisAnalyticsV2::Endpoints::DeleteApplicationCloudWatchLoggingOption.build(context)
          when :delete_application_input_processing_configuration
            Aws::KinesisAnalyticsV2::Endpoints::DeleteApplicationInputProcessingConfiguration.build(context)
          when :delete_application_output
            Aws::KinesisAnalyticsV2::Endpoints::DeleteApplicationOutput.build(context)
          when :delete_application_reference_data_source
            Aws::KinesisAnalyticsV2::Endpoints::DeleteApplicationReferenceDataSource.build(context)
          when :delete_application_snapshot
            Aws::KinesisAnalyticsV2::Endpoints::DeleteApplicationSnapshot.build(context)
          when :delete_application_vpc_configuration
            Aws::KinesisAnalyticsV2::Endpoints::DeleteApplicationVpcConfiguration.build(context)
          when :describe_application
            Aws::KinesisAnalyticsV2::Endpoints::DescribeApplication.build(context)
          when :describe_application_snapshot
            Aws::KinesisAnalyticsV2::Endpoints::DescribeApplicationSnapshot.build(context)
          when :describe_application_version
            Aws::KinesisAnalyticsV2::Endpoints::DescribeApplicationVersion.build(context)
          when :discover_input_schema
            Aws::KinesisAnalyticsV2::Endpoints::DiscoverInputSchema.build(context)
          when :list_application_snapshots
            Aws::KinesisAnalyticsV2::Endpoints::ListApplicationSnapshots.build(context)
          when :list_application_versions
            Aws::KinesisAnalyticsV2::Endpoints::ListApplicationVersions.build(context)
          when :list_applications
            Aws::KinesisAnalyticsV2::Endpoints::ListApplications.build(context)
          when :list_tags_for_resource
            Aws::KinesisAnalyticsV2::Endpoints::ListTagsForResource.build(context)
          when :rollback_application
            Aws::KinesisAnalyticsV2::Endpoints::RollbackApplication.build(context)
          when :start_application
            Aws::KinesisAnalyticsV2::Endpoints::StartApplication.build(context)
          when :stop_application
            Aws::KinesisAnalyticsV2::Endpoints::StopApplication.build(context)
          when :tag_resource
            Aws::KinesisAnalyticsV2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::KinesisAnalyticsV2::Endpoints::UntagResource.build(context)
          when :update_application
            Aws::KinesisAnalyticsV2::Endpoints::UpdateApplication.build(context)
          when :update_application_maintenance_configuration
            Aws::KinesisAnalyticsV2::Endpoints::UpdateApplicationMaintenanceConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

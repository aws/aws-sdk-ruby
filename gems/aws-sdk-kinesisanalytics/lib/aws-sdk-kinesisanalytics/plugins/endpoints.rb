# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::KinesisAnalytics
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::KinesisAnalytics::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::KinesisAnalytics::EndpointParameters`'
      ) do |cfg|
        Aws::KinesisAnalytics::EndpointProvider.new
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
            Aws::KinesisAnalytics::Endpoints::AddApplicationCloudWatchLoggingOption.build(context)
          when :add_application_input
            Aws::KinesisAnalytics::Endpoints::AddApplicationInput.build(context)
          when :add_application_input_processing_configuration
            Aws::KinesisAnalytics::Endpoints::AddApplicationInputProcessingConfiguration.build(context)
          when :add_application_output
            Aws::KinesisAnalytics::Endpoints::AddApplicationOutput.build(context)
          when :add_application_reference_data_source
            Aws::KinesisAnalytics::Endpoints::AddApplicationReferenceDataSource.build(context)
          when :create_application
            Aws::KinesisAnalytics::Endpoints::CreateApplication.build(context)
          when :delete_application
            Aws::KinesisAnalytics::Endpoints::DeleteApplication.build(context)
          when :delete_application_cloud_watch_logging_option
            Aws::KinesisAnalytics::Endpoints::DeleteApplicationCloudWatchLoggingOption.build(context)
          when :delete_application_input_processing_configuration
            Aws::KinesisAnalytics::Endpoints::DeleteApplicationInputProcessingConfiguration.build(context)
          when :delete_application_output
            Aws::KinesisAnalytics::Endpoints::DeleteApplicationOutput.build(context)
          when :delete_application_reference_data_source
            Aws::KinesisAnalytics::Endpoints::DeleteApplicationReferenceDataSource.build(context)
          when :describe_application
            Aws::KinesisAnalytics::Endpoints::DescribeApplication.build(context)
          when :discover_input_schema
            Aws::KinesisAnalytics::Endpoints::DiscoverInputSchema.build(context)
          when :list_applications
            Aws::KinesisAnalytics::Endpoints::ListApplications.build(context)
          when :list_tags_for_resource
            Aws::KinesisAnalytics::Endpoints::ListTagsForResource.build(context)
          when :start_application
            Aws::KinesisAnalytics::Endpoints::StartApplication.build(context)
          when :stop_application
            Aws::KinesisAnalytics::Endpoints::StopApplication.build(context)
          when :tag_resource
            Aws::KinesisAnalytics::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::KinesisAnalytics::Endpoints::UntagResource.build(context)
          when :update_application
            Aws::KinesisAnalytics::Endpoints::UpdateApplication.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

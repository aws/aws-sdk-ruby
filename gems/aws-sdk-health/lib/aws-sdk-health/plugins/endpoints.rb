# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Health
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Health::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Health::EndpointParameters`'
      ) do |cfg|
        Aws::Health::EndpointProvider.new
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
          when :describe_affected_accounts_for_organization
            Aws::Health::Endpoints::DescribeAffectedAccountsForOrganization.build(context)
          when :describe_affected_entities
            Aws::Health::Endpoints::DescribeAffectedEntities.build(context)
          when :describe_affected_entities_for_organization
            Aws::Health::Endpoints::DescribeAffectedEntitiesForOrganization.build(context)
          when :describe_entity_aggregates
            Aws::Health::Endpoints::DescribeEntityAggregates.build(context)
          when :describe_event_aggregates
            Aws::Health::Endpoints::DescribeEventAggregates.build(context)
          when :describe_event_details
            Aws::Health::Endpoints::DescribeEventDetails.build(context)
          when :describe_event_details_for_organization
            Aws::Health::Endpoints::DescribeEventDetailsForOrganization.build(context)
          when :describe_event_types
            Aws::Health::Endpoints::DescribeEventTypes.build(context)
          when :describe_events
            Aws::Health::Endpoints::DescribeEvents.build(context)
          when :describe_events_for_organization
            Aws::Health::Endpoints::DescribeEventsForOrganization.build(context)
          when :describe_health_service_status_for_organization
            Aws::Health::Endpoints::DescribeHealthServiceStatusForOrganization.build(context)
          when :disable_health_service_access_for_organization
            Aws::Health::Endpoints::DisableHealthServiceAccessForOrganization.build(context)
          when :enable_health_service_access_for_organization
            Aws::Health::Endpoints::EnableHealthServiceAccessForOrganization.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

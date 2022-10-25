# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudSearch
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudSearch::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudSearch::EndpointParameters`'
      ) do |cfg|
        Aws::CloudSearch::EndpointProvider.new
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
          when :build_suggesters
            Aws::CloudSearch::Endpoints::BuildSuggesters.build(context)
          when :create_domain
            Aws::CloudSearch::Endpoints::CreateDomain.build(context)
          when :define_analysis_scheme
            Aws::CloudSearch::Endpoints::DefineAnalysisScheme.build(context)
          when :define_expression
            Aws::CloudSearch::Endpoints::DefineExpression.build(context)
          when :define_index_field
            Aws::CloudSearch::Endpoints::DefineIndexField.build(context)
          when :define_suggester
            Aws::CloudSearch::Endpoints::DefineSuggester.build(context)
          when :delete_analysis_scheme
            Aws::CloudSearch::Endpoints::DeleteAnalysisScheme.build(context)
          when :delete_domain
            Aws::CloudSearch::Endpoints::DeleteDomain.build(context)
          when :delete_expression
            Aws::CloudSearch::Endpoints::DeleteExpression.build(context)
          when :delete_index_field
            Aws::CloudSearch::Endpoints::DeleteIndexField.build(context)
          when :delete_suggester
            Aws::CloudSearch::Endpoints::DeleteSuggester.build(context)
          when :describe_analysis_schemes
            Aws::CloudSearch::Endpoints::DescribeAnalysisSchemes.build(context)
          when :describe_availability_options
            Aws::CloudSearch::Endpoints::DescribeAvailabilityOptions.build(context)
          when :describe_domain_endpoint_options
            Aws::CloudSearch::Endpoints::DescribeDomainEndpointOptions.build(context)
          when :describe_domains
            Aws::CloudSearch::Endpoints::DescribeDomains.build(context)
          when :describe_expressions
            Aws::CloudSearch::Endpoints::DescribeExpressions.build(context)
          when :describe_index_fields
            Aws::CloudSearch::Endpoints::DescribeIndexFields.build(context)
          when :describe_scaling_parameters
            Aws::CloudSearch::Endpoints::DescribeScalingParameters.build(context)
          when :describe_service_access_policies
            Aws::CloudSearch::Endpoints::DescribeServiceAccessPolicies.build(context)
          when :describe_suggesters
            Aws::CloudSearch::Endpoints::DescribeSuggesters.build(context)
          when :index_documents
            Aws::CloudSearch::Endpoints::IndexDocuments.build(context)
          when :list_domain_names
            Aws::CloudSearch::Endpoints::ListDomainNames.build(context)
          when :update_availability_options
            Aws::CloudSearch::Endpoints::UpdateAvailabilityOptions.build(context)
          when :update_domain_endpoint_options
            Aws::CloudSearch::Endpoints::UpdateDomainEndpointOptions.build(context)
          when :update_scaling_parameters
            Aws::CloudSearch::Endpoints::UpdateScalingParameters.build(context)
          when :update_service_access_policies
            Aws::CloudSearch::Endpoints::UpdateServiceAccessPolicies.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

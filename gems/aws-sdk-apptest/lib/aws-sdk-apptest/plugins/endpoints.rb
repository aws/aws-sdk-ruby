# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppTest
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AppTest::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AppTest::EndpointParameters`'
      ) do |cfg|
        Aws::AppTest::EndpointProvider.new
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
          when :create_test_case
            Aws::AppTest::Endpoints::CreateTestCase.build(context)
          when :create_test_configuration
            Aws::AppTest::Endpoints::CreateTestConfiguration.build(context)
          when :create_test_suite
            Aws::AppTest::Endpoints::CreateTestSuite.build(context)
          when :delete_test_case
            Aws::AppTest::Endpoints::DeleteTestCase.build(context)
          when :delete_test_configuration
            Aws::AppTest::Endpoints::DeleteTestConfiguration.build(context)
          when :delete_test_run
            Aws::AppTest::Endpoints::DeleteTestRun.build(context)
          when :delete_test_suite
            Aws::AppTest::Endpoints::DeleteTestSuite.build(context)
          when :get_test_case
            Aws::AppTest::Endpoints::GetTestCase.build(context)
          when :get_test_configuration
            Aws::AppTest::Endpoints::GetTestConfiguration.build(context)
          when :get_test_run_step
            Aws::AppTest::Endpoints::GetTestRunStep.build(context)
          when :get_test_suite
            Aws::AppTest::Endpoints::GetTestSuite.build(context)
          when :list_tags_for_resource
            Aws::AppTest::Endpoints::ListTagsForResource.build(context)
          when :list_test_cases
            Aws::AppTest::Endpoints::ListTestCases.build(context)
          when :list_test_configurations
            Aws::AppTest::Endpoints::ListTestConfigurations.build(context)
          when :list_test_run_steps
            Aws::AppTest::Endpoints::ListTestRunSteps.build(context)
          when :list_test_run_test_cases
            Aws::AppTest::Endpoints::ListTestRunTestCases.build(context)
          when :list_test_runs
            Aws::AppTest::Endpoints::ListTestRuns.build(context)
          when :list_test_suites
            Aws::AppTest::Endpoints::ListTestSuites.build(context)
          when :start_test_run
            Aws::AppTest::Endpoints::StartTestRun.build(context)
          when :tag_resource
            Aws::AppTest::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AppTest::Endpoints::UntagResource.build(context)
          when :update_test_case
            Aws::AppTest::Endpoints::UpdateTestCase.build(context)
          when :update_test_configuration
            Aws::AppTest::Endpoints::UpdateTestConfiguration.build(context)
          when :update_test_suite
            Aws::AppTest::Endpoints::UpdateTestSuite.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end

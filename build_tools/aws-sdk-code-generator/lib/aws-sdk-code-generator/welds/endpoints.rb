# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Welds
    # @api private
    class Endpoints < Smithy::Weld
      def endpoint_built_in_bindings # rubocop:disable Metrics/MethodLength
        {
          'AWS::Region' => {
            render_config: proc do |_plan|
              <<~ADD_OPTION
                option(
                  :region,
                  doc_type: String,
                  docstring: 'TODO'
                )
              ADD_OPTION
            end,
            render_build: proc do |_plan|
              'config.region'
            end,
            render_test_set: proc do |_plan, value|
              { 'region' => value }
            end
          },
          'AWS::UseDualStack' => {
            render_config: proc do |_plan|
              <<~ADD_OPTION
                option(
                  :use_dual_stack_endpoint,
                  doc_type: 'Boolean',
                  docstring: 'TODO'
                )
              ADD_OPTION
            end,
            render_build: proc do |_plan|
              'config.use_dual_stack_endpoint'
            end,
            render_test_set: proc do |_plan, value|
              { 'use_dual_stack' => value }
            end
          },
          'AWS::UseFIPS' => {
            render_config: proc do |_plan|
              <<~ADD_OPTION
                option(
                  :use_fips_endpoint,
                  doc_type: 'Boolean',
                  docstring: 'TODO'
                )
              ADD_OPTION
            end,
            render_build: proc do |_plan|
              'config.use_fips_endpoint'
            end,
            render_test_set: proc do |_plan, value|
              { 'use_fips' => value }
            end
          },
          # TODO: find a way to staticly generate option to true and do not expose configuration
          'AWS::STS::UseGlobalEndpoint' => {
            render_config: proc do |_plan|
              <<~ADD_OPTION
                option(
                  :use_global_endpoint,
                  doc_type: 'Boolean',
                  docstring: 'TODO'
                )
              ADD_OPTION
            end,
            render_build: proc do |_plan|
              'config.use_global_endpoint'
            end,
            render_test_set: proc do |_plan, value|
              { 'use_global_endpoint' => value }
            end
          }
        }
      end

      def endpoint_function_bindings
        {
          'aws.partition' => 'Aws::Core::EndpointRules.aws_partition'
        }
      end

      def endpoint_auth_scheme_bindings
        {
          'sigv4a' => 'aws.auth#sigv4a',
          'sigv4' => 'aws.auth#sigv4'
        }
      end
    end
  end
end

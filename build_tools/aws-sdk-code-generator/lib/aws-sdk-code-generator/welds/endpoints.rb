# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Welds
    # @api private
    class Endpoints < Smithy::Weld
      def endpoint_built_in_bindings # rubocop:disable Metrics/MethodLength
        {
          'AWS::Region' => {
            render_build: proc do |_plan|
              'config.region'
            end,
            render_test_set: proc do |_plan, value|
              { 'region' => value }
            end
          },
          'AWS::UseDualStack' => {
            render_build: proc do |_plan|
              'config.use_dualstack_endpoint'
            end,
            render_test_set: proc do |_plan, value|
              { 'use_dualstack_endpoint' => value }
            end
          },
          'AWS::UseFIPS' => {
            render_build: proc do |_plan|
              'config.use_fips_endpoint'
            end,
            render_test_set: proc do |_plan, value|
              { 'use_fips_endpoint' => value }
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

# frozen_string_literal: true

require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/regional_endpoints'

module BuildTools
  module Welds
    # @api private
    class RegionalEndpoints < Smithy::Weld
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
          'aws.partition' => 'Aws::Core::EndpointRules.partition',
          'aws.parseArn' => 'Aws::Core::EndpointRules.parse_arn'
        }
      end

      def add_plugins
        {
          Aws::Core::Plugins::RegionalEndpoints => { require_path: 'aws-sdk-core/plugins/regional_endpoints' }
        }
      end
    end
  end
end

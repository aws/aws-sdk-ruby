# frozen_string_literal: true

require_relative '../../../../../../gems/aws-sdk-sts/lib/aws-sdk-sts/plugins/regional_endpoints'

module AwsSdkCodeGenerator
  module Welds
    module Services
      # Provides STS specific customizations.
      class STS < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'STS'

          say_status :insert, 'Adding custom plugins for STS', @plan.quiet
          true
        end

        def endpoint_built_in_bindings
          {
            'AWS::STS::UseGlobalEndpoint' => {
              render_build: proc do |_plan|
                'config.sts_regional_endpoints == "legacy"'
              end,
              render_test_set: proc do |_plan, value|
                { 'sts_regional_endpoints' => value ? 'legacy' : 'regional' }
              end
            }
          }
        end

        def add_plugins
          base_path = 'aws-sdk-sts/plugins'
          {
            Aws::STS::Plugins::RegionalEndpoints => { require_path: "#{base_path}/regional_endpoints" }
          }
        end
      end
    end
  end
end

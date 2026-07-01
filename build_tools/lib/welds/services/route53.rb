# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-route53/lib/aws-sdk-route53/plugins/custom_paginators'
require_relative '../../../../gems/aws-sdk-route53/lib/aws-sdk-route53/paginators/list_resource_record_sets'

module BuildTools
  module Welds
    module Services
      # Provides Route 53 specific customizations.
      class Route53 < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'Route 53'

          say_status :insert, 'Adding customizations for Route 53', @plan.quiet
          true
        end

        def add_plugins
          {
            Aws::Route53::Plugins::CustomPaginators => { require_path: 'aws-sdk-route53/plugins/custom_paginators' }
          }
        end
      end
    end
  end
end

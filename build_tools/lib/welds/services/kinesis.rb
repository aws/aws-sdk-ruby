# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-kinesis/lib/aws-sdk-kinesis/plugins/custom_paginators'
require_relative '../../../../gems/aws-sdk-kinesis/lib/aws-sdk-kinesis/paginators/describe_stream'

module BuildTools
  module Welds
    module Services
      # Provides Kinesis specific customizations.
      class Kinesis < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'Kinesis'

          say_status :insert, 'Adding customizations for Kinesis', @plan.quiet
          true
        end

        def add_plugins
          {
            Aws::Kinesis::Plugins::CustomPaginators => { require_path: 'aws-sdk-kinesis/plugins/custom_paginators' }
          }
        end
      end
    end
  end
end

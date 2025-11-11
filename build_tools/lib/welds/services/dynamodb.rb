# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-dynamodb/lib/aws-sdk-dynamodb/plugins/simple_attributes'

module BuildTools
  module Welds
    module Services
      # Provides DynamoDB specific customizations.
      class DynamoDB < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'DynamoDB'

          say_status :insert, 'Adding customizations for DynamoDB', @plan.quiet
          true
        end

        def add_plugins
          {
            Aws::DynamoDB::Plugins::SimpleAttributes => { require_path: 'aws-sdk-dynamodb/plugins/simple_attributes' }
          }
        end
      end
    end
  end
end

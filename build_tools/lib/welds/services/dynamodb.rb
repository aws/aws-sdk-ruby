# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-dynamodb/lib/aws-sdk-dynamodb/plugins/crc32_validation'
require_relative '../../../../gems/aws-sdk-dynamodb/lib/aws-sdk-dynamodb/plugins/extended_retries'
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
            Aws::DynamoDB::Plugins::CRC32Validation => { require_path: 'aws-sdk-dynamodb/plugins/crc32_validation' },
            Aws::DynamoDB::Plugins::ExtendedRetries => { require_path: 'aws-sdk-dynamodb/plugins/extended_retries' },
            Aws::DynamoDB::Plugins::SimpleAttributes => { require_path: 'aws-sdk-dynamodb/plugins/simple_attributes' }
          }
        end

        def add_dependencies
          { 'bigdecimal' => '~> 3' }
        end
      end
    end
  end
end

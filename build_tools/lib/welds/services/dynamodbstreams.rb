# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-dynamodbstreams/lib/aws-sdk-dynamodbstreams/plugins/simple_attributes'

module BuildTools
  module Welds
    module Services
      # Provides DynamoDBStreams specific customizations.
      class DynamoDBStreams < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'DynamoDB Streams'

          say_status :insert, 'Adding customizations for DynamoDBStreams', @plan.quiet
          true
        end

        def add_plugins
          {
            Aws::DynamoDBStreams::Plugins::SimpleAttributes => { require_path: 'aws-sdk-dynamodbstreams/plugins/simple_attributes' }
          }
        end
      end
    end
  end
end

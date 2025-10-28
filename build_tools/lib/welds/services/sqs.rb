# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-sqs/lib/aws-sdk-sqs/plugins/queue_urls'

module BuildTools
  module Welds
    module Services
      # Provides SQS specific customizations.
      class SQS < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'SQS'

          say_status :insert, 'Adding customizations for SQS', @plan.quiet
          true
        end

        def add_plugins
          {
            Aws::SQS::Plugins::QueueUrls => { require_path: 'aws-sdk-sqs/plugins/queue_urls' }
          }
        end
      end
    end
  end
end

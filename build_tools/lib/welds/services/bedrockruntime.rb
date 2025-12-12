# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-bedrockruntime/lib/aws-sdk-bedrockruntime/plugins/bearer_authorization'

module BuildTools
  module Welds
    module Services
      # Provides Bedrock specific customizations.
      class Bedrock < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'Bedrock Runtime'

          say_status :insert, 'Adding customizations for Bedrock Runtime', @plan.quiet
          true
        end

        def add_plugins
          {
            Aws::BedrockRuntime::Plugins::BearerAuthorization => { require_path: 'aws-sdk-bedrockruntime/plugins/bearer_authorization' }
          }
        end
      end
    end
  end
end

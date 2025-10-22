# frozen_string_literal: true

module BuildTools
  module Welds
    module Services
      # Provides SNS specific customizations.
      class SNS < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'SNS'

          say_status :insert, 'Adding customizations for SNS', @plan.quiet
          true
        end

        def add_dependencies
          # For the MessageVerifier implementation
          { 'json' => '~> 2', 'base64' => '~> 0' }
        end
      end
    end
  end
end

# frozen_string_literal: true

module BuildTools
  module Welds
    module Services
      # Provides CloudFront specific customizations.
      class CloudFront < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'CloudFront'

          say_status :insert, 'Adding customizations for CloudFront', @plan.quiet
          true
        end

        def add_dependencies
          # For the URL and Cookie signer implementation
          { 'json' => '~> 2', 'base64' => '~> 0' }
        end
      end
    end
  end
end

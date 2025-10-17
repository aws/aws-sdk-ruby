# frozen_string_literal: true

module BuildTools
  module Welds
    module Services
      # Provides Pinpoint SMS Voice specific customizations.
      class PinpointSMSVoice < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'Pinpoint SMS Voice'

          say_status :insert, 'Adding customizations for Pinpoint SMS Voice', @plan.quiet
          true
        end

        def pre_process(model)
          # Both String and __string are defined, causing constant redefinition warnings.
          model['shapes'].delete('com.amazonaws.pinpointsmsvoice#__string')

          model['shapes'].each do |shape_name, shape|
            next unless shape['type'] == 'structure'

            shape['members'].each do |member_name, member|
              if member['target'] == 'com.amazonaws.pinpointsmsvoice#__string'
                member['target'] = 'com.amazonaws.pinpointsmsvoice#String'
              end
            end
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-neptune/lib/aws-sdk-neptune/plugins/cross_region_copying'

module BuildTools
  module Welds
    module Services
      # Provides Neptune specific customizations.
      class Neptune < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'Neptune'

          say_status :insert, 'Adding customizations for Neptune', @plan.quiet
          true
        end

        def pre_process(model)
          operation_inputs = %w[
            CopyDBClusterSnapshotMessage
            CreateDBClusterMessage
          ]
          operation_inputs.each do |op|
            shape = model['shapes']["com.amazonaws.neptune##{op}"]
            shape['members']['SourceRegion'] = {
              'target' => 'com.amazonaws.neptune#String',
              'traits' => {
                'smithy.api#documentation' =>
                  '<p>The source region of the snapshot. This is only needed when the shapshot ' \
                  'is encrypted and in a different region.</p>'
              }
            }
          end
        end

        def add_plugins
          {
            Aws::Neptune::Plugins::CrossRegionCopying => { require_path: 'aws-sdk-neptune/plugins/cross_region_copying' }
          }
        end
      end
    end
  end
end

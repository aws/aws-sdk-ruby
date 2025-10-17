# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-docdb/lib/aws-sdk-docdb/plugins/cross_region_copying'

module BuildTools
  module Welds
    module Services
      # Provides DocDB specific customizations.
      class DocDB < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'DocDB'

          say_status :insert, 'Adding customizations for DocDB', @plan.quiet
          true
        end

        def pre_process(model)
          operation_inputs = %w[
            CopyDBClusterSnapshotMessage
            CreateDBClusterMessage
          ]
          operation_inputs.each do |op|
            shape = model['shapes']["com.amazonaws.docdb##{op}"]
            shape['members']['SourceRegion'] = {
              'target' => 'com.amazonaws.docdb#String',
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
            Aws::DocDB::Plugins::CrossRegionCopying => { require_path: 'aws-sdk-docdb/plugins/cross_region_copying' }
          }
        end
      end
    end
  end
end

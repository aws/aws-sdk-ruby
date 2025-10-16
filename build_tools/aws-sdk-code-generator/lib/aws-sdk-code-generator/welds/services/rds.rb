# frozen_string_literal: true

require_relative '../../../../../../gems/aws-sdk-rds/lib/aws-sdk-rds/plugins/cross_region_copying'

module AwsSdkCodeGenerator
  module Welds
    module Services
      # Provides RDS specific customizations.
      class RDS < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'RDS'

          say_status :insert, 'Adding custom plugins for RDS', @plan.quiet
          true
        end

        def pre_process(model)
          operation_inputs = %w[
            CopyDBClusterSnapshotMessage
            CopyDBSnapshotMessage
            CreateDBClusterMessage
            CreateDBInstanceReadReplicaMessage
            StartDBInstanceAutomatedBackupsReplicationMessage
          ]
          operation_inputs.each do |op|
            shape = model['shapes']["com.amazonaws.rds##{op}"]
            shape['members']['SourceRegion'] = {
              'target' => 'com.amazonaws.rds#String',
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
            Aws::RDS::Plugins::CrossRegionCopying => { require_path: 'aws-sdk-rds/plugins/cross_region_copying' }
          }
        end
      end
    end
  end
end

# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-ec2/lib/aws-sdk-ec2/plugins/copy_encrypted_snapshot'
require_relative '../../../../gems/aws-sdk-ec2/lib/aws-sdk-ec2/plugins/region_validation'

module BuildTools
  module Welds
    module Services
      # Provides EC2 specific customizations.
      class EC2 < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'EC2'

          say_status :insert, 'Adding customizations for EC2', @plan.quiet
          true
        end

        def pre_process(model)
          copy_snapshot_members = model['shapes']['com.amazonaws.ec2#CopySnapshotRequest']['members']
          # This plugin populates these parameters, so don't document them.
          copy_snapshot_members['DestinationRegion']['traits'].delete('smithy.api#documentation')
          copy_snapshot_members['PresignedUrl']['traits'].delete('smithy.api#documentation')
        end

        def add_plugins
          {
            Aws::EC2::Plugins::CopyEncryptedSnapshot => { require_path: 'aws-sdk-ec2/plugins/copy_encrypted_snapshot' },
            Aws::EC2::Plugins::RegionValidation => { require_path: 'aws-sdk-ec2/plugins/region_validation' }
          }
        end
      end
    end
  end
end

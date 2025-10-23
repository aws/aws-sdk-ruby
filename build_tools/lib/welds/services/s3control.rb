# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-s3control/lib/aws-sdk-s3control/plugins/host_id'
require_relative '../../../../gems/aws-sdk-s3control/lib/aws-sdk-s3control/plugins/use_arn_region'

module BuildTools
  module Welds
    module Services
      # Provides S3 Control specific customizations.
      class S3Control < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'S3 Control'

          say_status :insert, 'Adding customizations for S3 Control', @plan.quiet
          true
        end

        def pre_process(model) # rubocop:disable Metrics/AbcSize
          # Endpoints 2.0 will handle AccoundId validation and host prefix insertion.
          # If the host prefix trait only has the AccountId label, we need to remove the trait,
          # the corresponding hostLabel trait, and the required member from the input shape.
          model['shapes'].each_value do |shape|
            next unless shape['type'] == 'operation'

            operation_traits = shape.fetch('traits', {})
            endpoint_trait = operation_traits.fetch('smithy.api#endpoint', {})
            next unless endpoint_trait['hostPrefix'] == '{AccountId}.'

            host_prefix = endpoint_trait.delete('hostPrefix')
            # optional cleanup of the input shape
            operation_traits.delete('smithy.api#endpoint') if endpoint_trait.empty?
            shape.delete('traits') if operation_traits.empty?

            host_prefix.gsub(/\{.+?\}/) do |label|
              label = label.delete('{}')
              input_shape = model['shapes'][shape['input']['target']]
              label_member = input_shape['members'][label]
              member_traits = label_member.fetch('traits', {})
              member_traits.delete('smithy.api#hostLabel')
              member_traits.delete('smithy.api#required')
              # optional cleanup of the input shape member
              label_member.delete('traits') if member_traits.empty?
            end
          end
        end

        def endpoint_built_in_bindings
          {
            'AWS::S3Control::UseArnRegion' => {
              render_build: proc do |_plan|
                'config.s3_use_arn_region'
              end,
              render_test_set: proc do |_plan, value|
                { 's3_use_arn_region' => value }
              end
            }
          }
        end

        def add_plugins
          {
            Aws::S3Control::Plugins::HostId => { require_path: 'aws-sdk-s3control/plugins/host_id' },
            Aws::S3Control::Plugins::UseArnRegion => { require_path: 'aws-sdk-s3control/plugins/use_arn_region' }
          }
        end
      end
    end
  end
end

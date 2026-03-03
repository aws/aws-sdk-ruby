# frozen_string_literal: true

require_relative '../../../../gems/aws-sdk-s3/lib/aws-sdk-s3/plugins/accelerate'
require_relative '../../../../gems/aws-sdk-s3/lib/aws-sdk-s3/plugins/arn'
require_relative '../../../../gems/aws-sdk-s3/lib/aws-sdk-s3/plugins/bucket_dns'
require_relative '../../../../gems/aws-sdk-s3/lib/aws-sdk-s3/plugins/iad_regional_endpoint'

module BuildTools
  module Welds
    module Services
      # Provides S3 specific customizations.
      class S3 < Smithy::Weld
        def for?(service)
          _id, service = service.first
          return false unless service.fetch('traits', {}).fetch('aws.api#service', {})['sdkId'] == 'S3'

          say_status :insert, 'Adding customizations for S3', @plan.quiet
          true
        end

        def pre_process(model)
          endpoint_tests = model.dig('shapes', 'com.amazonaws.s3#AmazonS3', 'traits', 'smithy.rules#endpointTests')
          return model unless endpoint_tests

          test_cases = endpoint_tests['testCases']
          # TODO: remove the following once S3 express has been implemented
          test_cases.reject! do |test_case|
            auth_schemes = test_case.dig('expect', 'endpoint', 'properties', 'authSchemes')
            auth_schemes&.first&.dig('name') == 'sigv4-s3express'
          end

          model
        end

        def endpoint_built_in_bindings # rubocop:disable Metrics/MethodLength
          {
            'AWS::S3::Accelerate' => {
              render_build: proc do |_plan|
                'config.s3_use_accelerate_endpoint'
              end,
              render_test_set: proc do |_plan, value|
                { 's3_use_accelerate_endpoint' => value }
              end
            },
            'AWS::S3::DisableMultiRegionAccessPoints' => {
              render_build: proc do |_plan|
                'config.s3_disable_multiregion_access_points'
              end,
              render_test_set: proc do |_plan, value|
                { 's3_disable_multiregion_access_points' => value }
              end
            },
            'AWS::S3::ForcePathStyle' => {
              render_build: proc do |_plan|
                'config.s3_force_path_style'
              end,
              render_test_set: proc do |_plan, value|
                { 's3_force_path_style' => value }
              end
            },
            'AWS::S3::UseArnRegion' => {
              render_build: proc do |_plan|
                'config.s3_use_arn_region'
              end,
              render_test_set: proc do |_plan, value|
                { 's3_use_arn_region' => value }
              end
            },
            'AWS::S3::UseGlobalEndpoint' => {
              render_build: proc do |_plan|
                'config.s3_us_east_1_regional_endpoint == "legacy"'
              end,
              render_test_set: proc do |_plan, value|
                { 's3_us_east_1_regional_endpoint' => value ? 'legacy' : 'regional' }
              end
            }
          }
        end

        def endpoint_function_bindings
          {
            'aws.isVirtualHostableS3Bucket' => 'Aws::Core::EndpointRules.is_virtual_hostable_s3_bucket?'
          }
        end

        def add_plugins
          {
            Aws::S3::Plugins::Accelerate => { require_path: 'aws-sdk-s3/plugins/accelerate' },
            Aws::S3::Plugins::ARN => { require_path: 'aws-sdk-s3/plugins/arn' },
            Aws::S3::Plugins::BucketDns => { require_path: 'aws-sdk-s3/plugins/bucket_dns' },
            Aws::S3::Plugins::IADRegionalEndpoint => { require_path: 'aws-sdk-s3/plugins/iad_regional_endpoint' }
          }
        end
      end
    end
  end
end

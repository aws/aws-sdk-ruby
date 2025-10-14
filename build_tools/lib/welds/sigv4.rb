# frozen_string_literal: true

require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/sigv4'

module BuildTools
  module Welds
    # Provides default plugins.
    class SigV4 < Smithy::Weld
      def for?(service)
        _id, service = service.first
        return false unless service.fetch('traits', {}).key?('aws.auth#sigv4')

        say_status :insert, 'Adding the SigV4 plugin', @plan.quiet
        true
      end

      def endpoint_built_in_bindings
        {
          'AWS::Auth::AccountId' => {
            render_build: proc do |_plan|
              'config.credentials_provider.identity.account_id'
            end,
            render_test_set: proc do |_plan, value|
              { 'account_id' => value }
            end
          },
          'AWS::Auth::AccountIdEndpointMode' => {
            render_build: proc do |_plan|
              'config.account_id_endpoint_mode'
            end,
            render_test_set: proc do |_plan, value|
              { 'account_id_endpoint_mode' => value }
            end
          }
        }
      end

      def endpoint_auth_scheme_bindings
        {
          'sigv4a' => 'aws.auth#sigv4a',
          'sigv4' => 'aws.auth#sigv4'
        }
      end

      def add_plugins
        {
          Aws::Core::Plugins::SigV4 => { require_path: 'aws-sdk-core/plugins/sigv4' }
        }
      end

      def add_auth_schemes
        ['aws.auth#sigv4']
      end

      def add_dependencies
        { 'aws-sigv4' => '2.0.0.pre0' }
      end
    end
  end
end

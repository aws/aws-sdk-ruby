# frozen_string_literal: true

require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/global_configuration'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/shared_config'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/user_agent'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/invocation_id'
require_relative '../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/recursion_detection'

module BuildTools
  module Welds
    # Provides default plugins.
    class DefaultPlugins < Smithy::Weld
      def for?(_service)
        say_status :insert, 'Adding default AWS plugins', @plan.quiet
        true
      end

      def post_process(artifacts)
        string = "\nAws::Core::Plugins::GlobalConfiguration.add_identifier(:#{@plan.service_name.downcase})\n"
        file = artifacts.find { |artifact| artifact.end_with?('/client.rb') }
        insert_into_file(file, string, before: "\nmodule #{@plan.module_name}")
      end

      def add_dependencies
        { 'aws-sdk-core' => '4.0.0.pre0' }
      end

      def remove_dependencies
        ['smithy-client']
      end

      def add_plugins
        {
          Aws::Core::Plugins::GlobalConfiguration => { require_path: 'aws-sdk-core/plugins/global_configuration' },
          Aws::Core::Plugins::SharedConfig => { require_path: 'aws-sdk-core/plugins/shared_config' },
          Aws::Core::Plugins::UserAgent => { require_path: 'aws-sdk-core/plugins/user_agent' },
          Aws::Core::Plugins::InvocationId => { require_path: 'aws-sdk-core/plugins/invocation_id' }
          Aws::Core::Plugins::RecursionDetection => { require_path: 'aws-sdk-core/plugins/recursion_detection' }
        }
      end

      def remove_plugins
        [Smithy::Client::Plugins::UserAgent]
      end
    end
  end
end

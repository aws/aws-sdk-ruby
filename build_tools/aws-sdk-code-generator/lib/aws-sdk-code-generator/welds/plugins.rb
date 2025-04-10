# frozen_string_literal: true

# TODO: consider whether this is awful or not
require_relative '../../../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/sigv4'

module AwsSdkCodeGenerator
  module Welds
    # Provides default plugins.
    class Plugins < Smithy::Weld
      def for?(_service)
        say_status :insert, 'Adding default AWS plugins', @plan.quiet
        true
      end

      def add_dependencies
        { 'aws-sdk-core' => '4.0.0.pre0' }
      end

      def add_plugins
        base_path = 'aws-sdk-core/plugins'
        {
          Aws::Core::Plugins::SigV4 => { require_path: "#{base_path}/sigv4" }
        }
      end
    end
  end
end

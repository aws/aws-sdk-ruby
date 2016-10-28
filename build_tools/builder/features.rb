module BuildTools
  class Builder
    class Features

      def initialize(service)
        @service = service
      end

      def build
        FileWriter.new(env_path).write(env)
        FileWriter.new(steps_path).bootstrap(step_definitions)
      end

      private

      def env_path
        File.join(@service.gem_dir, 'features', 'env.rb')
      end

      def steps_path
        File.join(@service.gem_dir, 'features', 'step_definitions.rb')
      end

      def env
        <<-RUBY
$:.unshift(File.expand_path('../../lib', __FILE__))
$:.unshift(File.expand_path('../../../aws-sdk-core/features', __FILE__))
#{load_paths}

require 'aws-sdk-#{var_name}'
require 'features_helper'

Aws::#{@service.name}::Client.add_plugin(ApiCallTracker)
        RUBY
      end

      def step_definitions
        <<-RUBY
Before("@#{var_name}") do
  @service = Aws::#{mod_name}::Resource.new
  @client = @service.client
end

After("@#{var_name}") do
  # shared cleanup logic
end
        RUBY
      end

      def load_paths
        @service.dependencies.map do |gem_name, _|
          "$:.unshift(File.expand_path('../../../#{gem_name}/lib', __FILE__))"
        end.join("\n")
      end

      def mod_name
        @service.name
      end

      def var_name
        @service.identifier
      end

    end
  end
end

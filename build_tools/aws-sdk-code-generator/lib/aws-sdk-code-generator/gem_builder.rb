module AwsSdkCodeGenerator
  class GemBuilder

    # @param [Hash] options
    # @option options [required, Service] :service
    def initialize(options)
      @options = options
      @service = options.fetch(:service)
    end

    # @return [Hash]
    attr_reader :options

    def build(&block)
      yield(gemspec_path, gemspec_file)
      yield(features_env_path, features_env_file)
      yield(features_step_definitions_path, features_step_definitions_file)
      yield(spec_helper_path, spec_helper_file)
      yield(version_path, version_file)
    end

    private

    def gemspec_path
      "#{@service.gem_name}.gemspec"
    end

    def gemspec_file
      Views::Gemspec.new(options).render
    end

    def features_env_path
      'features/env.rb'
    end

    def features_env_file
      Views::Features::Env.new(options).render
    end

    def features_step_definitions_path
      'features/step_definitions.rb'
    end

    def features_step_definitions_file
      Views::Features::StepDefinitions.new(options).render
    end

    def spec_helper_path
      'spec/spec_helper.rb'
    end

    def spec_helper_file
      Views::Spec::SpecHelper.new(options).render
    end

    def version_path
      'VERSION'
    end

    def version_file
      Views::Version.new(options).render
    end

  end
end

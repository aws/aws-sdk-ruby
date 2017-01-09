module AwsSdkCodeGenerator
  class GemBuilder

    # @param [Hash] options
    # @option options [required, Service] :service
    # @option options [required, String] :aws_sdk_core_lib_path
    def initialize(options)
      @options = options
      @service = options.fetch(:service)
    end

    # @return [Hash]
    attr_reader :options

    def each(&block)
      Enumerator.new do |y|
        y.yield("#{@service.gem_name}.gemspec", gemspec_file)
        y.yield('features/env.rb', features_env_file)
        y.yield('features/step_definitions.rb', features_step_definitions_file)
        y.yield('spec/spec_helper.rb', spec_helper_file)
        y.yield('VERSION', version_file)
        code = CodeBuilder.new(@options)
        code.source_files(prefix: @service.gem_name).each do |path, code|
          y.yield("lib/#{path}", code)
        end
      end.each(&block)
    end

    private

    def gemspec_file
      Views::Gemspec.new(options).render
    end

    def features_env_file
      Views::Features::Env.new(options).render
    end

    def features_step_definitions_file
      Views::Features::StepDefinitions.new(options).render
    end

    def spec_helper_file
      Views::Spec::SpecHelper.new(options).render
    end

    def version_file
      Views::Version.new(options).render
    end

  end
end

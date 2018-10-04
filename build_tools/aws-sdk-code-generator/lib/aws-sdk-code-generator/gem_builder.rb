module AwsSdkCodeGenerator
  class GemBuilder

    # @param [Hash] options
    # @option (see CodeBuilder#initialize)
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
        if @service.smoke_tests
          y.yield('features/smoke.feature', smoke_file)
          y.yield('features/smoke_step_definitions.rb', smoke_step_definitions_file)
        end
        y.yield('VERSION', version_file)
        code = CodeBuilder.new(@options)
        code.source_files.each do |path, code|
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

    def smoke_file
      Views::Features::Smoke.new(options).render
    end

    def smoke_step_definitions_file
      Views::Features::SmokeStepDefinitions.new(options).render
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

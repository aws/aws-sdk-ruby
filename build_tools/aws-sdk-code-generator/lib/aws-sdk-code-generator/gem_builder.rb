# frozen_string_literal: true

module AwsSdkCodeGenerator
  class GemBuilder

    # @param [Hash] options
    # @option (see CodeBuilder#initialize)
    def initialize(options)
      @options = options
      @service = options.fetch(:service)
      validate_model!
    end

    # @return [Hash]
    attr_reader :options

    def validate_model!
      validate_document_support!
    end

    def each(&block)
      Enumerator.new do |y|
        y.yield("#{@service.gem_name}.gemspec", gemspec_file)
        y.yield('features/env.rb', features_env_file)
        y.yield('features/step_definitions.rb', features_step_definitions_file)
        y.yield('spec/spec_helper.rb', spec_helper_file)
        y.yield('spec/endpoint_provider_spec.rb', endpoint_provider_spec_file)
        if @service.smoke_tests
          y.yield('features/smoke.feature', smoke_file)
          y.yield('features/smoke_step_definitions.rb', smoke_step_definitions_file)
        end
        y.yield('VERSION', version_file)
        y.yield('LICENSE.txt', license_file)

        if @service.endpoint_rules && !@service.endpoint_rules.empty?
          y.yield('endpoint-rule-set.json', JSON.dump(@service.endpoint_rules))
        end

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

    def endpoint_provider_spec_file
      Views::Spec::EndpointProviderSpecClass.new(options).render
    end

    def version_file
      Views::Version.new(options).render
    end

    def license_file
      File.read(File.expand_path('../../../templates/license.txt',__FILE__ ))
    end

    private

    # document types are only supported for rest-json and json
    def validate_document_support!
      return if ['rest-json', 'json'].include?(@service.protocol)

      # Check all shapes and raise if any are Document types
      @service.api.fetch('shapes', {}).each do |name, shape|
        if shape['type'] == 'structure' && shape['document']
          raise "Shape #{name} is a document type.  Document types are only supported in json protocols."
        end
      end
    end
  end
end

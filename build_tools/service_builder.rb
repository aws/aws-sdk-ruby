require_relative 'service_builder/features'
require_relative 'service_builder/file_writer'
require_relative 'service_builder/gemspec'
require_relative 'service_builder/source'
require_relative 'service_builder/specs'
require_relative 'service_builder/version_file'

module BuildTools
  class ServiceBuilder

    # @param [BuildTools::Service] service
    def initialize(service)
      @service = service
    end

    def build
      ServiceBuilder::VersionFile.new(@service).build
      ServiceBuilder::Gemspec.new(@service).build
      #ServiceBuilder::Source.new(@service).build
      ServiceBuilder::Specs.new(@service).build
      ServiceBuilder::Features.new(@service).build
    end

    private

    def boostrap_version_file
      version_file = File.join(@service.gem_dir, 'VERSION')
      write_file(version_file, "1.0.0") unless File.exists?(version_file)
      File.read(version_file).strip
    end

    def build_src(gem_version)
      g = AwsSdkCodeGenerator::Generator.new(generate_opts) do |svc_module|

        if File.exists?("#{@service.gem_dir}/lib/#{@service.gem_name}/customizations.rb")
          svc_module.top("\n# customizations for generated code")
          svc_module.require_relative("#{@service.gem_name}/customizations.rb")
        end

        svc_module.code("GEM_VERSION = '#{gem_version}'")

      end

      g.generate_src_files(prefix: @service.gem_name).each do |path, contents|
        write_file(File.join(@service.gem_dir, 'lib', path), contents)
      end
    end

    def generate_opts
      options = {}
      options[:module_names] = ['Aws', @service.name]
      @service.models.each_pair do |model_name, model_path|
        options[model_name] = load_model(@service.name, model_name, model_path)
      end
      options[:gem_requires] = @service.dependencies.keys
      options
    end

    def build_gemspec(gem_version)
      gemspec_path = File.join(@service.gem_dir, "#{@service.gem_name}.gemspec")
      write_file(gemspec_path, gemspec)
    end

    # Loads a service model, applying customizations if necessary.
    def load_model(svc_name, model_name, path)
      model = load_json(path)
      case model_name
      when :api  then Customizations.apply_api_customizations(svc_name, model)
      when :docs then Customizations.apply_doc_customizations(svc_name, model)
      end
      model
    end

    def load_json(path)
      JSON.load(File.open(path, 'rb') { |f| f.read })
    end

    def write_file(path, contents)
      puts path
      FileUtils.mkdir_p(File.dirname(path))
      File.open(path, 'wb') do |file|
        file.write(contents)
      end
    end

  end
end

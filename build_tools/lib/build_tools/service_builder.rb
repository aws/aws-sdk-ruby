require 'fileutils'
require 'json'

module BuildTools
  class ServiceBuilder

    # @param [BuildTools::Service] service
    def initialize(service)
      @service = service
    end

    def build
      gem_version = boostrap_version_file
      build_gemspec(gem_version)
      build_src(gem_version)
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

    def gemspec
      <<-GEMSPEC
Gem::Specification.new do |spec|

  spec.name          = '#{@service.gem_name}'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = '#{gemspec_summary}'
  spec.description   = '#{gemspec_description}'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb']

  #{gemspec_dependencies}

end
      GEMSPEC
    end

    def gemspec_summary
      "AWS SDK for Ruby - #{@service.short_name}"
    end

    def gemspec_description
      abbr = @service.short_name != @service.full_name ?
        " (#{@service.short_name})" : ''
      "Official AWS Ruby gem for #{@service.full_name}#{abbr}. This gem is part of the AWS SDK for Ruby."
    end

    def gemspec_dependencies
      @service.dependencies.map do |gem, version|
        "spec.add_dependency('#{gem}', '#{version}')"
      end.join("\n  ")
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

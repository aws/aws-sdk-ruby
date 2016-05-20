require 'json'
require 'fileutils'
require 'aws-sdk-code-generator'

module BuildTools
  module Tasks
    class GenerateService
      class << self
        # @param [BuildTools::Services::Service] service
        def new(service)
          task = Rake::Task.define_task("build:#{service.identifier}") do
            build_version_file(service)
            build_gemspec(service)
            build_src(service)
          end
          task.add_description("Builds the code for Aws::#{service.name}")
          task
        end

        private

        def build_src(svc)
          g = AwsSdkCodeGenerator::Generator.new(generate_opts(svc)) do |svc_module|

            if File.exists?("#{svc.gem_dir}/lib/#{svc.gem_name}/customizations.rb")
              svc_module.top("\n# customizations for generated code")
              svc_module.require_relative("#{svc.gem_name}/customizations.rb")
            end

            svc_module.code("GEM_VERSION = '#{gem_version(svc)}'")

          end

          g.generate_src_files(prefix: svc.gem_name).each do |path, contents|
            write_file(File.join(svc.gem_dir, 'lib', path), contents)
          end
        end

        def build_gemspec(service)
          dependencies = service.dependencies.map do |gem, version|
            "spec.add_dependency('#{gem}', '#{version}')"
          end.join("\n  ")

          write_file(File.join(service.gem_dir, "#{service.gem_name}.gemspec"), <<-GEMSPEC)
Gem::Specification.new do |spec|

  spec.name          = '#{service.gem_name}'
  spec.version       = '#{gem_version(service)}'
  spec.summary       = 'AWS SDK for Ruby - #{service.short_name}'
  spec.description   = 'Official AWS Ruby gem for #{service.full_name}. This gem is part of the AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb']

  #{dependencies}

end
          GEMSPEC
        end

        def build_version_file(service)
          version_path = File.join(service.gem_dir, 'VERSION')
          write_file(version_path, "1.0.0") unless File.exists?(version_path)
        end

        # Options given to the code generator, includes the loaded
        # and customized service model JSON documents.
        def generate_opts(service)
          options = {}
          options[:module_names] = ['Aws', service.name]
          service.models.each_pair do |model_name, model_path|
            options[model_name] = load_model(service.name, model_name, model_path)
          end
          options[:gem_requires] = service.dependencies.keys
          options
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

        def gem_version(svc)
          File.read("#{svc.gem_dir}/VERSION").strip
        end

      end
    end
  end
end

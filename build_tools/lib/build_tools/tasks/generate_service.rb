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

            gem_name = "aws-sdk-#{service.identifier}"
            gem_dir = File.join('services', gem_name)
            options = generate_opts(service)

            build_version_file(gem_name, gem_dir, options)
            build_gemspec(gem_name, gem_dir, options)
            build_src(gem_name, gem_dir, options)

          end
          task.add_description("Builds the code for Aws::#{service.name}")
          task
        end

        private

        def build_src(gem_name, gem_dir, options)
          g = AwsSdkCodeGenerator::Generator.new(options) do |svc_module|
            if File.exists?("#{gem_dir}/lib/#{gem_name}/customizations.rb")
              svc_module.top("\n# customizations for generated code")
              svc_module.require_relative("#{gem_name}/customizations.rb")
            end
          end
          g.generate_src_files(prefix:gem_name).each do |path, contents|
            write_file(File.join(gem_dir, 'lib', path), contents)
          end
        end

        def build_gemspec(gem_name, gem_dir, options)
          service_name = options[:api]['metadata']['serviceFullName']
          write_file(File.join(gem_dir, "#{gem_name}.gemspec"), <<-GEMSPEC)
Gem::Specification.new do |spec|
  spec.name          = '#{gem_name}'
  spec.version       = File.read(File.join(File.dirname(__FILE__), 'VERSION')).strip
  spec.summary       = 'AWS SDK for Ruby - #{service_name}'
  spec.description   = 'Official AWS Ruby gem for #{service_name}. This gem is part of the AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb']

  spec.add_dependency('aws-sdk-core', '~> 3.0')

end
          GEMSPEC
        end

        def build_version_file(gem_name, gem_dir, options)
          path = File.join(gem_dir, 'VERSION')
          write_file(path, "1.0.0") unless File.exists?(path)
        end

        # Options given to the code generator, includes the loaded
        # and customized service model JSON documents.
        def generate_opts(service)
          options = {}
          options[:module_names] = ['Aws', service.name]
          service.models.each_pair do |model_name, model_path|
            options[model_name] = load_model(service.name, model_name, model_path)
          end
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

      end
    end
  end
end

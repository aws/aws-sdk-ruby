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
            prefix = "aws-sdk-core/#{service.identifier}"
            generator = AwsSdkCodeGenerator::Generator.new(generate_opts(service))
            generator.generate_src_files(autoload_prefix: prefix).each do |path, contents|
              write_file(File.join('aws-sdk-core/lib', path), contents)
            end
          end
          task.add_description("Builds the code for Aws::#{service.name}")
          task
        end

        private

        # Options given to the code generator, includes the loaded
        # and customized service model JSON documents.
        def generate_opts(service)
          options = {}
          options[:module_names] = ['Aws', service.name]
          options[:add_client_plugins] = plugins_to_add(service.name)
          options[:remove_client_plugins] = plugins_to_remove(service.name)
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

        def plugins_to_add(service_name)
          Customizations.plugins_to_add(service_name)
        end

        def plugins_to_remove(service_name)
          Customizations.plugins_to_remove(service_name)
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

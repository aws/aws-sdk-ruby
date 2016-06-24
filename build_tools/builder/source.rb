module BuildTools
  class Builder
    class Source

      def initialize(service)
        @service = service
        @generator = AwsSdkCodeGenerator::Generator.new(generator_options) do |svc_module|
          svc_module.top("\n# customizations for generated code")
          svc_module.require_relative("#{gem_name}/customizations.rb")
          svc_module.code("GEM_VERSION = '#{gem_version}'")
        end
      end

      def build

        FileWriter.new(customizations_path).bootstrap('')
        @generator.generate_src_files(prefix: @service.gem_name).each do |path, contents|
          FileWriter.new("gems/#{gem_name}/lib/#{path}").write(contents)
        end
      end

      private

      def generator_options
        options = {}
        options[:module_names] = ['Aws', @service.name]
        @service.models.each_pair do |model_name, model_path|
          options[model_name] = load_model(@service.name, model_name, model_path)
        end
        options[:gem_requires] = @service.dependencies.keys
        options
      end

      # Loads a service model, applying customizations if necessary.
      def load_model(svc_name, model_name, path)
        model = JSON.load(File.open(path, 'rb') { |f| f.read })
        case model_name
        when :api  then Customizations.apply_api_customizations(svc_name, model)
        when :docs then Customizations.apply_doc_customizations(svc_name, model)
        end
        model
      end

      def customizations_path
        File.join(@service.gem_dir, 'lib', gem_name, 'customizations.rb')
      end

      def gem_name
        @service.gem_name
      end

      def gem_version
        File.read(File.join(@service.gem_dir, 'VERSION')).strip
      end

    end
  end
end

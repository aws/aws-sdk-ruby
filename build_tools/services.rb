require 'json'

module BuildTools
  class ServiceEnumerator

    include Enumerable

    MANIFEST_PATH = File.expand_path('../../services.json', __FILE__)

    API_DIR = File.expand_path('../../apis', __FILE__)

    def initialize
      manifest = JSON.load(File.read(MANIFEST_PATH))
      @services = manifest.inject([]) do |services, (svc_name, svc_definition)|
        services << Service.build(svc_name, svc_definition)
        services
      end
    end

    # @param [String] identifier
    def [](identifier)
      service = @services.find { |svc| svc.name.downcase == identifier }
      if service
        service
      else
        raise ArgumentError, "unknown service #{identifier.inspect}"
      end
    end
    alias service []

    def each(&block)
      @services.each(&block)
    end

    class Service

      # @return [String] Something like "dynamodb"
      attr_accessor :identifier

      # @return [String] Something like "DynamoDB"
      attr_accessor :name

      # @return [Hash] A hash of service models paths. Keys may include the
      #   following:
      #
      #   * `:api`
      #   * `:docs`
      #   * `:paginators`
      #   * `:waiters`
      #   * `:resources`
      #   * `:examples`
      #
      attr_accessor :models

      # @return [string] Something like "aws-sdk-dynamodb"
      attr_accessor :gem_name

      # @return [string] Path to the gem directory, e.g. "gems/aws-sdk-dynamodb"
      attr_accessor :gem_dir

      # @return [Hash<String,String> A hash of runtime gem dependencies. Keys
      #   are gem names and values are versions
      attr_accessor :dependencies

      # @return [String] The name/key used in endpoints.json.
      attr_accessor :endpoints_key

      # @return [Hash<String,String>] A hash of plugins to add to the client.
      #   Hash keys are plugin class names, hash values are string paths to
      #   the plugin definition.
      attr_accessor :add_plugins

      # @return [Array<String>] A list of default plugin class names to
      #   not remove from the generated client.
      attr_accessor :remove_plugins

      # @return [Hash]
      def api
        @api ||= json_load(models[:api])
      end

      # @return [nil,String]
      #   One of:
      #
      #   * "json"
      #   * "query"
      #   * "rest-json"
      #   * "rest-xml"
      #   * "ec2"
      #
      def protocol
        api['metadata']['protocol']
      end

      # @return [String<YYYY-MM-DD>]
      def api_version
        api['metadata']['apiVersion']
      end

      # @return [String]
      def signature_version
        api['metadata']['signatureVersion']
      end

      # @return [String] Something like "Amazon Simple Storage Service"
      def full_name
        api['metadata']['serviceFullName']
      end

      # @return [String] Something like "Amazon S3"
      def short_name
        api['metadata']['serviceAbbreviation'] || full_name
      end

      def build
        Builder.new(self).build
      end

      private

      def json_load(path)
        JSON.load(File.open(path, 'rb') { |f| f.read })
      end

      class << self

        def build(name, definition)
          svc = Service.new
          svc.identifier = name.downcase
          svc.name = name
          svc.models = models(definition['models'])
          svc.gem_name = definition['gem'] || "aws-sdk-#{svc.identifier}"
          svc.gem_dir = File.join('gems', svc.gem_name)
          svc.endpoints_key = definition['endpoint']
          svc.dependencies = dependencies(svc, definition)
          svc.add_plugins = add_plugins(svc, definition)
          svc.remove_plugins = Array(definition['removePlugins'])
          svc
        end

        private

        def dependencies(svc, definition)
          dependencies = {}
          dependencies['aws-sdk-core'] = '~> 3.0'
          case svc.signature_version
          when 'v4' then dependencies['aws-sigv4'] = '~> 1.0'
          when 'v2' then dependencies['aws-sigv2'] = '~> 1.0'
          end
          dependencies.update(definition['dependencies'] || {})
          dependencies
        end

        def models(prefix)
          Dir.glob("#{API_DIR}/#{prefix}/*").inject({}) do |paths, model_path|
            paths[model_key(model_path)] = model_path
            paths
          end
        end

        def model_key(model_path)
          case File.basename(model_path)
          when 'api-2.json' then :api
          when 'docs-2.json' then :docs
          when 'waiters-2.json' then :waiters
          when 'paginators-1.json' then :paginators
          when 'examples-1.json' then :examples
          when 'resources-1.json' then :resources
          else raise ArgumentError, "unsupported `#{File.basename(model_path)}'"
          end
        end

        def add_plugins(svc, definition)
          Array(definition['addPlugins']).inject({}) do |hash, plugin_name|
            hash[plugin_name] = plugin_path(svc, plugin_name)
            hash
          end
        end

        def plugin_path(svc, plugin_name)
          filename = plugin_name.split('::').last
          filename = AwsSdkCodeGenerator::Underscore.underscore(filename)
          "gems/#{svc.gem_name}/lib/#{svc.gem_name}/plugins/#{filename}.rb"
        end

      end
    end
  end

  Services = ServiceEnumerator.new

end

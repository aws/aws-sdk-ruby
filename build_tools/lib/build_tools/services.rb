require 'json'

module BuildTools
  class ServiceEnumerator

    include Enumerable

    MANIFEST_PATH = File.expand_path('../../../../gems/aws-sdk-core/service-models.json', __FILE__)

    API_DIR = File.expand_path('../../../../apis', __FILE__)

    def initialize
      @services = manifest.inject([]) do |services, (service_name, definition)|
        services << Service.new.tap do |svc|
          svc.identifier = service_name.downcase
          svc.name = service_name
          svc.models = service_models(definition['models'])
          svc.gem_name = definition['gem'] || "aws-sdk-#{svc.identifier}"
          svc.gem_dir = File.join('gems', svc.gem_name)
          svc.dependencies = {}
          svc.dependencies['aws-sdk-core'] = '~> 3.0'
          svc.dependencies.update(definition['dependencies'] || {})
        end
      end
    end

    # @param [String] identifier
    def service(identifier)
      service = @services.find { |svc| svc.name.downcase == identifier }
      if service
        service
      else
        raise ArgumentError, "unknown service #{identifier.inspect}"
      end
    end

    def each(&block)
      @services.each(&block)
    end

    private

    def manifest
      JSON.load(File.read(MANIFEST_PATH))
    end

    def service_models(prefix)
      Dir.glob("#{API_DIR}/#{prefix}/*").inject({}) do |paths, path|
        paths[model_option(path)] = path
        paths
      end
    end

    def model_option(path)
      case File.basename(path)
      when 'api-2.json' then :api
      when 'docs-2.json' then :docs
      when 'waiters-2.json' then :waiters
      when 'paginators-1.json' then :paginators
      when 'examples-1.json' then :examples
      when 'resources-1.json' then :resources
      else
        msg = "unsupported `#{File.basename(path)}'"
        raise ArgumentError, msg
      end
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

      # @return [Hash]
      def api
        @api ||= json_load(models[:api])
      end

      # @return [String<YYYY-MM-DD>]
      def api_version
        api['metadata']['apiVersion']
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
        ServiceBuilder.new(self).build
      end

      private

      def json_load(path)
        JSON.load(File.open(path, 'rb') { |f| f.read })
      end

    end
  end

  Services = ServiceEnumerator.new

end

require 'json'

module BuildTools
  class ServiceEnumerator

    include Enumerable

    MANIFEST_PATH = File.expand_path('../../../../aws-sdk-core/service-models.json', __FILE__)

    API_DIR = File.expand_path('../../../../aws-sdk-core/apis', __FILE__)

    def initialize
      @services = manifest.inject([]) do |services, (service_name, definition)|
        services << Service.new.tap do |svc|
          svc.identifier = service_name.downcase
          svc.name = service_name
          svc.models = service_models(definition['models'])
          svc.gem_name = definition['gem'] || "aws-sdk-#{svc.identifier}"
        end
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

      # @return [Hash]
      def api
        @api ||= json_load(models[:api])
      end

      # @return [String<YYYY-MM-DD>]
      def api_version
        api['metadata']['apiVersion']
      end

      # @return [String] Something like "AWS DyanmoDB"
      def full_name
        api['metadata']['serviceFullName']
      end

      private

      def json_load(path)
        JSON.load(File.open(path, 'rb') { |f| f.read })
      end

    end
  end

  Services = ServiceEnumerator.new

end

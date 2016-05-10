require 'json'

module BuildTools
  class Services

    include Enumerable

    MANIFEST_PATH = File.join(
      File.dirname(__FILE__),
      '..',
      '..',
      'aws-sdk-core',
      'service-models.json'
    )

    API_DIR = File.join(
      File.dirname(__FILE__),
      '..',
      '..',
      'aws-sdk-core',
      'apis'
    )

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
      attr_accessor :identifier
      attr_accessor :name
      attr_accessor :models
      attr_accessor :gem_name
    end

  end
end

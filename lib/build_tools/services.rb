require 'json'

module BuildTools
  class Services

    ROOT_DIR = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))

    API_DIR = File.join(ROOT_DIR, 'aws-sdk-core', 'apis')

    MANIFEST_PATH = File.join(ROOT_DIR, 'aws-sdk-core', 'service-models.json')

    def initialize
      @services = manifest.each.with_object({}) do |(svc_name, svc), hash|
        hash[svc_name.downcase] = {
          name: svc_name,
          prefix: svc['models'],
        }
      end
    end

    # @return [Array<String>]
    def identifiers
      @services.keys.sort
    end

    # @param [String] identifier
    # @return [String]
    def name(identifier)
      service(identifier)[:name]
    end

    def prefix(identifier)
      service(identifier)[:prefix]
    end

    # @param [String] identifier
    # @return [Hash<Symbol,Path>]
    def model_paths(identifier)
      Dir.glob("#{API_DIR}/#{prefix(identifier)}/*").inject({}) do |paths, path|
        paths[model_option(path)] = path
        paths
      end
    end

    private

    def manifest
      JSON.load(File.read(MANIFEST_PATH))
    end

    def service(identifier)
      if @services.key?(identifier)
        @services[identifier]
      else
        msg = "invalid service identifier; valid identifiers include %s"
        msg = msg % [@services.keys.join(', ')]
        raise ArgumentError, msg
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

  end
end

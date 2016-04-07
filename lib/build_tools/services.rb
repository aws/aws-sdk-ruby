require 'json'

module BuildTools
  class Services

    ROOT_DIR = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))

    API_DIR = File.join(ROOT_DIR, 'aws-sdk-core', 'apis')

    MODELS_PATH = File.join(ROOT_DIR, 'service-models.json')

    def initialize
      @prefixes = JSON.load(File.read(MODELS_PATH))
      @names = @prefixes.keys.inject({}) do |names, name|
        names[name.downcase] = name
        names
      end
    end

    # @return [Array<String>]
    def identifiers
      @names.keys.sort
    end

    # @return [Array<String>]
    def names
      @names.values.sort_by(&:downcase)
    end

    # @param [String]
    # @return [Hash<Symbol,Path>]
    def model_paths(identifier)
      Dir.glob("#{API_DIR}/#{prefix(identifier)}/*").inject({}) do |paths, path|
        paths[model_option(path)] = path
        paths
      end
    end

    # @param [String]
    # @return [String]
    def name(identifier)
      if @names.key?(identifier)
        @names[identifier]
      else
        msg = "unknown service identifier `#{identifier}'"
        raise ArgumentError, msg
      end
    end

    # @param [String] identifier The downcased service module name.
    # @return [String] Returns the model path prefix, e.g. `"s3/2006-03-01"`.
    def prefix(identifier)
      @prefixes[name(identifier)]
    end

    private

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

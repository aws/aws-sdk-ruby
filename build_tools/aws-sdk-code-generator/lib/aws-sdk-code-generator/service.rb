module AwsSdkCodeGenerator
  class Service

    # @param [Hash] options
    # @option options [required, String] :gem_version Gem version, e.g. "1.0.0".
    # @option options [required, String] :name The service name, e.g. "S3"
    # @option options [String] :module_name The service module name, defaults
    #   to "Aws::#{name}", e.g. "Aws::S3".
    # @option options [required, Hash, String] :api
    # @option options [Hash, String] :docs
    # @option options [Hash, String] :paginators
    # @option options [Hash, String] :waiters
    # @option options [Hash, String] :resources
    # @option options [Hash, String] :examples
    # @option options [Hash, String] :smoke_tests
    # @option options [Hash<gem,version>] :gem_dependencies ({})
    # @option options [Hash] :add_plugins ({})
    # @option options [Hash] :remove_plugins ([])
    def initialize(options)
      @name = options.fetch(:name)
      @identifier = name.downcase
      @module_name = options[:module_name] || "Aws::#{name}"
      @gem_name = options[:gem_name] || "aws-sdk-#{identifier}"
      @gem_version = options.fetch(:gem_version)
      @api = load_json(options.fetch(:api))
      unless @api['metadata']['protocol'] == 'api-gateway'
        # Dont reply on API Gateway doc.json
        ApplyDocs.new(@api).apply(load_json(options[:docs]))
      end
      @paginators = load_json(options[:paginators])
      @waiters = load_json(options[:waiters])
      @resources = load_json(options[:resources])
      @examples = load_json(options[:examples])
      @smoke_tests = load_json(options[:smoke_tests])
      @gem_dependencies = options[:gem_dependencies] || {}
      @add_plugins = options[:add_plugins] || {}
      @remove_plugins = options[:remove_plugins] || []
      @endpoints_key = options.fetch(:endpoints_key, nil)
      # APIG custom service only
      @default_endpoint = options[:default_endpoint]

      # computed attributes
      @protocol = api.fetch('metadata').fetch('protocol')
      @protocol_settings = api.fetch('metadata')['protocolSettings'] || {}
      @api_version = api.fetch('metadata')['apiVersion']
      @signature_version = api.fetch('metadata')['signatureVersion']
      @full_name = api.fetch('metadata')['serviceFullName']
      @short_name = api.fetch('metadata')['serviceAbbreviation'] || @full_name
    end

    # @return [String] The service name, e.g. "S3"
    attr_reader :name

    # @return [String] The service module, e.g. "Aws::S3"
    attr_reader :module_name

    # @return [Hash] The service API model.
    attr_reader :api

    # @return [Hash, nil] The service paginators model.
    attr_reader :paginators

    # @return [Hash, nil] The service waiters model.
    attr_reader :waiters

    # @return [Hash, nil] The service resource model.
    attr_reader :resources

    # @return [Hash, nil] The service shared examples model.
    attr_reader :examples

    # @return [Hash, nil] The service smoke test model.
    attr_reader :smoke_tests

    # @return [Hash<String,String>] A hash of gem dependencies. Hash keys
    #   are gem names, values are versions.
    attr_reader :gem_dependencies

    # @return [String]
    attr_reader :gem_version

    # @return [String] The gem name, e.g. "aws-sdk-s3"
    attr_reader :gem_name

    # @return [String, nil]
    attr_reader :endpoints_key

    # @return [String] Required for APIG custom service
    attr_reader :default_endpoint

    # @return [Hash<String,String>] A hash of plugins to add.
    attr_reader :add_plugins

    # @return [Array<String>] A list of default plugins to remove.
    attr_reader :remove_plugins

    # @return [String] The service identifier, e.g. "s3"
    attr_reader :identifier

    # @return [String] The service protocol, e.g. "json", "query", etc.
    attr_reader :protocol

    # @return [Hash] The service protocol settings
    attr_reader :protocol_settings

    # @return [String] The service API version, e.g. "YYYY-MM-DD".
    attr_reader :api_version

    # @return [String] The signature version, e.g. "v4"
    attr_reader :signature_version

    # @return [String] The full product name for the service,
    #   e.g. "Amazon Simple Storage Service".
    attr_reader :full_name

    # @return [String] The short product name for the service, e.g. "Amazon S3".
    attr_reader :short_name

    # @api private
    def inspect
      "#<#{self.class.name}>"
    end

    private

    def load_json(value)
      case value
      when nil then nil
      when Hash then value
      when String
        File.open(value, 'rb') do |file|
          JSON.load(file.read)
        end
      else
        "expected String, Hash, or nil, got `#{value.class}'"
        raise ArgumentError, msg
      end
    end

  end
end

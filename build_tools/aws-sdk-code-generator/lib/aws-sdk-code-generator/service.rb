# frozen_string_literal: true

module AwsSdkCodeGenerator
  class Service
    # Ordered priority list of supported protocols
    # api-gateway is a special case and is always first.
    # Prioritize JSON over CBOR due to better performance.
    SUPPORTED_PROTOCOLS = %w[
      api-gateway
      json_1.0
      json_1.1
      smithy-rpc-v2-cbor
      rest-json
      rest-xml
      query
      ec2
    ]

    # @param [Hash] options
    # @option options [required, String] :name The service name, e.g. "S3"
    # @option options [String] :module_name The service module name, defaults
    #   to "Aws::#{name}", e.g. "Aws::S3".
    # @option options [String] :gem_name The gem name, defaults to
    #  "aws-sdk-#{name}", e.g. "aws-sdk-s3".
    # @option options [required, String] :gem_version Gem version, e.g. "1.0.0".
    # @option options [required, Hash, String] :api
    # @option options [Hash, String] :docs
    # @option options [Hash, String] :paginators
    # @option options [Hash, String] :waiters
    # @option options [Hash, String] :resources
    # @option options [Hash, String] :examples
    # @option options [Hash, String] :endpoint_rules
    # @option options [Hash, String] :endpoint_tests
    # @option options [Hash, String] :smoke_tests
    # @option options [Hash<gem,version>] :gem_dependencies ({})
    # @option options [Hash] :add_plugins ({})
    # @option options [Hash] :remove_plugins ([])
    # @option options [Boolean] :deprecated (false)
    # @option options [String] :default_endpoint (nil)
    # @option options [String] :endpoints_key (nil)
    def initialize(options)
      @name = options.fetch(:name)
      @identifier = name.downcase
      @module_name = options[:module_name] || "Aws::#{name}"
      @gem_name = options[:gem_name] || "aws-sdk-#{identifier}"
      @gem_version = options.fetch(:gem_version)

      @api = load_json(options.fetch(:api))

      # computed attributes
      metadata = @api.fetch('metadata')
      @protocol = select_protocol(metadata)
      @protocol_settings = metadata['protocolSettings'] || {}
      @api_version = metadata['apiVersion']
      @signature_version = metadata['signatureVersion']
      @auth = api.fetch('metadata')['auth']
      @full_name = metadata['serviceFullName']
      @short_name = metadata['serviceAbbreviation'] || @full_name

      # Dont reply on API Gateway doc.json
      unless @protocol == 'api-gateway'
        ApplyDocs.new(@api).apply(load_json(options[:docs]))
      end
      @paginators = load_json(options[:paginators])
      @waiters = load_json(options[:waiters])
      @resources = load_json(options[:resources])
      @examples = load_json(options[:examples])
      unless options[:legacy_endpoints]
        @endpoint_rules = load_json(options[:endpoint_rules])
        @endpoint_tests = load_json(options[:endpoint_tests])
      end
      @smoke_tests = load_json(options[:smoke_tests])

      @gem_dependencies = options[:gem_dependencies] || {}
      @add_plugins = options[:add_plugins] || {}
      @remove_plugins = options[:remove_plugins] || []
      @deprecated = options[:deprecated] || false
      @default_endpoint = options[:default_endpoint] # APIG custom service only
      @endpoints_key = options.fetch(:endpoints_key, nil)

      @require_endpoint_discovery = endpoint_discovery_required?
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

    # @return Boolean True if the service should use legacy endpoints
    def legacy_endpoints?
      !@endpoint_rules || @endpoint_rules.empty?
    end

    # @return Boolean True if the service is inlined in core (ie not a stand alone gem)
    def included_in_core?
      %w[STS SSO SSOOIDC Signin].include?(name)
    end

    # @return [Hash, nil] The service endpoint rules.
    attr_reader :endpoint_rules

    # @return [Hash, nil] The service endpoint tests.
    attr_reader :endpoint_tests

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

    # @return [Array<String>] The list of supported protocols
    attr_reader :protocols

    # @return [Hash] The service protocol settings
    attr_reader :protocol_settings

    # @return [String] The service API version, e.g. "YYYY-MM-DD".
    attr_reader :api_version

    # @return [String] The signature version, e.g. "v4"
    attr_reader :signature_version

    # @return [Array<String>] A list of supported auth types
    attr_reader :auth

    # @return [String] The full product name for the service,
    #   e.g. "Amazon Simple Storage Service".
    attr_reader :full_name

    # @return [String] The short product name for the service, e.g. "Amazon S3".
    attr_reader :short_name

    # @return [Boolean] true if any operation requires endpoint_discovery
    attr_reader :require_endpoint_discovery

    # @return [String] the service_id
    def service_id
      metadata = @api['metadata']
      return metadata['serviceId'] if metadata['serviceId']

      name = metadata['serviceAbbreviation'] || metadata['serviceFullName']
      name = name.gsub(/AWS/, '').gsub(/Amazon/, '')
      name = name.gsub(/[^a-zA-Z0-9 ]+/, '')
      name = name.gsub(/^[0-9]+/, '')
      name = name.strip

      name
    end

    # @return [Boolean] true if the service is deprecated
    def deprecated?
      @deprecated
    end

    # @api private
    def inspect
      "#<#{self.class.name}>"
    end

    def h2_setting?
      @protocol_settings['h2']
    end

    def h2_required_setting?
      @protocol_settings['h2'] == 'required'
    end

    private

    def select_protocol(metadata)
      protocols = metadata.fetch('protocols', [metadata['protocol']])
      protocol = SUPPORTED_PROTOCOLS.find do |supported_protocol|
        if %w[json_1.0 json_1.1].include?(supported_protocol)
          supported_protocol, version = supported_protocol.split('_')
        end

        if protocols.include?(supported_protocol) &&
           (version.nil? || version == metadata['jsonVersion'])
          return supported_protocol
        end
      end
      return protocol if protocol

      raise "unsupported protocols `#{protocols.join(', ')}'"
    end

    def endpoint_discovery_required?
      @api.fetch('operations', []).any? do |_, o|
        o['endpointdiscovery'] && o['endpointdiscovery']['required']
      end
    end

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

# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceBuilder

    # @option options [required, Hash] :resource
    # @option options [required, Boolean] :request_made
    def initialize(options = {})
      @resource = options.fetch(:resource)
      @request_made = options.fetch(:request_made)
    end

    def build
      "#{resource_class}.new(#{constructor_options})"
    end

    private

    def resource_class
      @resource['type']
    end

    def constructor_options
      options = {}
      options.update(identifiers)
      options[:data] = data_path if @resource['path']
      options[:client] = "@client"
      HashFormatter.new(wrap:false).format(options)
    end

    def identifiers
      (@resource['identifiers'] || []).inject({}) do |hash, identifier|
        value = ResourceValueSource.new(identifier).to_s
        hash[Underscore.underscore(identifier['target']).to_sym] = value
        hash
      end
    end

    def data_path
      if @request_made
        ResourceValueSource.new('source' => 'response', 'path' => @resource['path'])
      else
        ResourceValueSource.new('source' => 'data', 'path' => @resource['path'])
      end
    end

  end
end

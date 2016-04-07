module AwsSdkCodeGenerator
  module Generators
    module Resource
      class Builder < Dsl::CodeLiteral

        include Helper

        # @param [Hash] resource
        # @param [Boolean] request_made
        def initialize(resource:, request_made:)
          super()
          @resource = resource
          @request_made = request_made
          append("#{resource_class}.new(#{options})")
        end

        private

        def resource_class
          @resource['type']
        end

        def options
          options = {}
          options.update(identifiers)
          options[:data] = data_path if @resource['path']
          options[:client] = "@client"
          HashFormatter.new(wrap:false, inline:true).format(options)
        end

        def identifiers
          (@resource['identifiers'] || []).inject({}) do |hash, identifier|
            value = ValueSource.new(identifier).to_s
            hash[underscore(identifier['target']).to_sym] = value
            hash
          end
        end

        def data_path
          if @request_made
            ValueSource.new('source' => 'response', 'path' => @resource['path'])
          else
            ValueSource.new('source' => 'data', 'path' => @resource['path'])
          end
        end

      end
    end
  end
end

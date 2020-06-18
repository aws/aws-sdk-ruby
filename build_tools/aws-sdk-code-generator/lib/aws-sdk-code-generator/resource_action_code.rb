# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceActionCode

    def initialize(options)
      action = options.fetch(:action)
      @request = action.fetch('request')
      @resource = action.fetch('resource', nil)
      @streaming = options.fetch(:streaming, false)
    end

    def build
      parts = []
      if batch_action?
        parts << 'batch = []'
        parts << client_request
        parts << ResourceBatchBuilder.new(resource: @resource).build
        parts << "#{resource_type}::Collection.new([batch], size: batch.size)"
      elsif resource_action?
        parts << client_request(
          @resource['identifiers'].any? { |i| i['source'] == 'response' } || @resource['path']
        )
        parts << ResourceBuilder.new(resource: @resource, request_made: true).build
      else
        parts << client_request
        parts << 'resp.data'
      end
      parts.join("\n").rstrip
    end

    private

    def client_request(resp = true)
      ResourceClientRequest.build(request: @request, resp: resp, streaming: @streaming)
    end

    def resource_type
      @resource['type']
    end

    def batch_action?
      if resource_action?
        paths = (@resource['identifiers'] || []).map {|i| i['path'] }
        paths << @resource['path']
        paths.compact.any? { |path| path.match(/\[/) }
      else
        false
      end
    end

    def resource_action?
      !!@resource
    end

  end
end

# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceLoadMethod
    class << self

      # @param [String] class_name
      # @param [Hash] resource
      # @return [ResourceMethod]
      def build(class_name, resource)
        if resource['load']
          load_method(class_name, resource)
        else
          empty_load_method
        end
      end

      private

      def empty_load_method
        ResourceMethod.new.tap do |m|
          m.method_name = 'load'
          m.arguments = nil
          m.documentation = "# @raise [NotImplementedError]\n# @api private"
          m.code = "msg = \"#load is not implemented, data only available via enumeration\"\nraise NotImplementedError, msg"
        end
      end

      def load_method(class_name, resource)
        ResourceMethod.new.tap do |m|
          m.method_name = 'load'
          m.arguments = nil
          m.documentation = <<-DOCS.rstrip
# Loads, or reloads {#data} for the current {#{class_name}}.
# Returns `self` making it possible to chain methods.
#
#     #{Underscore.underscore(class_name)}.reload.data
#
# @return [self]
          DOCS
          m.code = <<-CODE.rstrip
#{request(resource)}
@data = resp.#{data_path(resource)}
self
          CODE
        end
      end

      def request(resource)
        ResourceClientRequest.build(
          request: resource['load']['request'],
          merge: false,
          resp: true
        )
      end

      def data_path(resource)
        path = resource['load']['path']
        if path == '@'
          'data'
        else
          Underscore.underscore_jmespath(path)
        end
      end

    end
  end
end

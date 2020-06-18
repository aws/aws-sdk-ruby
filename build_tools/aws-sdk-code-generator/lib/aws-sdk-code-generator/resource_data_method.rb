# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceDataMethod
    class << self

      # @param [String] class_name
      # @param [Hash] resource
      # @return [ResourceMethod]
      def build(class_name, resource)
        if resource['load']
          data_method(class_name, resource)
        elsif resource['shape']
          data_without_load(class_name, resource)
        else
          empty_data_method
        end
      end

      private

      def empty_data_method
        ResourceMethod.new.tap do |m|
          m.method_name = 'data'
          m.arguments = nil
          m.documentation = "# @api private\n# @return [EmptyStructure]"
          m.code = '@data'
        end
      end

      def data_without_load(class_name, resource)
        ResourceMethod.new.tap do |m|
          m.method_name = 'data'
          m.arguments = nil
          m.documentation = "# @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.\n# @return [Types::#{resource['shape']}]\n#   Returns the data for this {#{class_name}}."
          m.code = "load unless @data\n@data"
        end
      end

      def data_method(class_name, resource)
        ResourceMethod.new.tap do |m|
          m.method_name = 'data'
          m.arguments = nil
          m.documentation = "# @return [Types::#{resource['shape']}]\n#   Returns the data for this {#{class_name}}. Calls\n#   {Client##{Underscore.underscore(resource['load']['request']['operation'])}} if {#data_loaded?} is `false`."
          m.code = "load unless @data\n@data"
        end
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

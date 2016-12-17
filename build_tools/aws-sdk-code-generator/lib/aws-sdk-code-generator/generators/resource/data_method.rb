module AwsSdkCodeGenerator
  module Generators
    module Resource
      class DataMethod < Dsl::Method

        # @option options [required, String] :resource_name
        # @option options [required, Hash] :resource
        def initialize(options = {})
          @resource_name = options.fetch(:resource_name)
          resource = options.fetch(:resource)
          @shape_name = resource['shape']
          @load = resource['load'] && resource['load']['request']['operation']
          super('data')
          if @shape_name
            returns("Types::#{@shape_name}", docstring:return_docstring)
            code do |c|
              c << 'load unless @data'
              c << '@data'
            end
            if !@load
              docstring(<<-DOCSTRING)
@raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
              DOCSTRING
            end
          else
            docstring('@api private')
            returns('EmptyStructure')
            code('@data')
          end
        end

        private


        def return_docstring
          if @load
            <<-DOCSTRING
Returns the data for this {#{@resource_name}}. Calls
{Client##{underscore(@load)}} if {#data_loaded?} is `false`.
            DOCSTRING
          else
            "Returns the data for this {#{@resource_name}}."
          end
        end

      end
    end
  end
end
